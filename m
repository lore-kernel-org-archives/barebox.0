Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T7l4L-0004l0-Ox
 for barebox@lists.infradead.org; Sat, 01 Sep 2012 10:36:50 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id DD36DDC7028
 for <barebox@lists.infradead.org>; Sat,  1 Sep 2012 12:42:01 +0200 (CEST)
Date: Sat, 1 Sep 2012 12:37:04 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120901103704.GK18708@game.jcrosoft.org>
References: <20120824044613.GI6271@game.jcrosoft.org>
 <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
 <1345783818-28784-6-git-send-email-plagnioj@jcrosoft.com>
 <20120827135349.GH26594@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120827135349.GH26594@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 06/18] fs: introduce get_mounted_path to get the path
 where a file is mounted
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:53 Mon 27 Aug     , Sascha Hauer wrote:
> On Fri, Aug 24, 2012 at 06:50:06AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  fs/fs.c      |    9 +++++++++
> >  include/fs.h |    2 ++
> >  2 files changed, 11 insertions(+)
> > 
> > diff --git a/fs/fs.c b/fs/fs.c
> > index ca6340c..8ec368c 100644
> > --- a/fs/fs.c
> > +++ b/fs/fs.c
> > @@ -242,6 +242,15 @@ static struct fs_device_d *get_fsdevice_by_path(const char *path)
> >  	return fs_dev_root;
> >  }
> >  
> > +char* get_mounted_path(const char *path)
> 
> char *get_mounted_path
yeap

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
