Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T4yuN-00056d-EH
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 18:47:03 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 6DF61DC1272
 for <barebox@lists.infradead.org>; Fri, 24 Aug 2012 20:52:01 +0200 (CEST)
Date: Fri, 24 Aug 2012 20:47:15 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120824184715.GM6271@game.jcrosoft.org>
References: <20120824044613.GI6271@game.jcrosoft.org>
 <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
 <1345783818-28784-4-git-send-email-plagnioj@jcrosoft.com>
 <CAONxwYPtL-XbY5X_006yiu5yipyasO+ODX1vkY13o0Uf7RXXAQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAONxwYPtL-XbY5X_006yiu5yipyasO+ODX1vkY13o0Uf7RXXAQ@mail.gmail.com>
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
Subject: Re: [PATCH 04/18] fs: implement stat
To: Roberto Nibali <rnibali@gmail.com>
Cc: barebox@lists.infradead.org

On 11:25 Fri 24 Aug     , Roberto Nibali wrote:
> Hi
> 
> > diff --git a/fs/fs.c b/fs/fs.c
> > index a19e1f4..9f2e82c 100644
> > --- a/fs/fs.c
> > +++ b/fs/fs.c
> > @@ -26,6 +26,7 @@
> >  #include <errno.h>
> >  #include <malloc.h>
> >  #include <linux/stat.h>
> > +#include <linux/err.h>
> >  #include <fcntl.h>
> >  #include <xfuncs.h>
> >  #include <init.h>
> > @@ -111,6 +112,60 @@ static int init_cwd(void)
> >
> >  postcore_initcall(init_cwd);
> >
> > +char *normalise_link(const char *pathname, const char* symlink)
> > +{
> > +       const char *buf = symlink;
> > +       char *path_free, *path;
> > +       char *absolute_path;
> > +       int point = 0;
> > +       int dir = 1;
> > +       int len;
> > +
> > +       if (symlink[0] == '/')
> > +               return strdup(symlink);
> > +
> > +       path = path_free = strdup(pathname);
> > +
> > +       while (*buf == '.' || *buf == '/') {
> > +               if (*buf == '.') {
> > +                       point++;
> > +               } else if (*buf == '/') {
> > +                       point = 0;
> > +                       dir++;
> > +               }
> > +               if (point > 2) {
> > +                       buf -= 2;
> > +                       break;
> > +               }
> > +               buf++;
> > +       }
> > +
> > +       if (dir) {
> > +               while(dir) {
> > +                       path = dirname(path);
> > +                       dir--;
> > +               }
> > +       }
> > +
> > +       len = strlen(buf) + strlen(path) + 1;
> > +       if (buf[0] != '/')
> > +               len++;
> > +
> > +       absolute_path = calloc(sizeof(char), len);
> > +
> > +       if(!absolute_path)
> > +               return NULL;
> > +
> > +       strcat(absolute_path, path);
> > +       if (buf[0] != '/')
> > +               strcat(absolute_path, "/");
> > +       strcat(absolute_path, buf);
> 
> Not that it matters hugely here, but how about strlcat(3) and checking
> the return value?

not need to check as we check it before
and strlcat does not exist on barebox

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
