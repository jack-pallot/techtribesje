package je.techtribes.component.newsfeedentry;

import je.techtribes.domain.ContentSource;
import je.techtribes.domain.NewsFeedEntry;

import java.util.Collection;
import java.util.Date;
import java.util.List;

interface NewsFeedEntryDao {

    void storeNewsFeedEntries(Collection<NewsFeedEntry> newsFeedEntries);

    List<NewsFeedEntry> getRecentNewsFeedEntries(int page, int pageSize);

    List<NewsFeedEntry> getRecentNewsFeedEntries(ContentSource contentSource, int pageSize);

    List<NewsFeedEntry> getRecentNewsFeedEntries(Collection<ContentSource> contentSources, int page, int pageSize);

    long getNumberOfNewsFeedEntries(ContentSource contentSource, Date start, Date end);

    long getNumberOfNewsFeedEntries();

    long getNumberOfNewsFeedEntries(Collection<ContentSource> contentSources);

}
