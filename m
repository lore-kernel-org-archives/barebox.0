Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T7n6Q-0007jO-GS
 for barebox@lists.infradead.org; Sat, 01 Sep 2012 12:47:06 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 044B8DC6839
 for <barebox@lists.infradead.org>; Sat,  1 Sep 2012 14:52:19 +0200 (CEST)
Date: Sat, 1 Sep 2012 14:47:21 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120901124721.GB19233@game.jcrosoft.org>
References: <20120824050332.GK6271@game.jcrosoft.org>
 <1345784816-31344-1-git-send-email-plagnioj@jcrosoft.com>
 <1345784816-31344-7-git-send-email-plagnioj@jcrosoft.com>
 <20120828084741.GK24458@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120828084741.GK24458@pengutronix.de>
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
Subject: Re: [PATCH 7/7] defaultenv-2: add symbolic link support to boot/nfs
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:47 Tue 28 Aug     , Sascha Hauer wrote:
> On Fri, Aug 24, 2012 at 07:06:56AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  defaultenv-2/base/boot/nfs |   55 +++++++++++++++++++++++++++++++++++++++++---
> >  1 file changed, 52 insertions(+), 3 deletions(-)
> > 
> > diff --git a/defaultenv-2/base/boot/nfs b/defaultenv-2/base/boot/nfs
> > index 248f975..a33a21c 100644
> > --- a/defaultenv-2/base/boot/nfs
> > +++ b/defaultenv-2/base/boot/nfs
> > @@ -43,6 +43,18 @@ if [ -n "${global.dhcp.bootfile}" ]; then
> >  	mount -t nfs "${eth0.serverip}:${mnt}" "${path}"
> >  
> >  	global.bootm.image="${path}/${bootfile}"
> > +
> > +	if [ -L "${global.bootm.image}" ]; then
> > +		readlink -f "${global.bootm.image}" bootfile_symlink
> > +
> > +		dirname -V "${bootfile_symlink}" mnt
> > +		basename "${bootfile_symlink}" bootfile
> > +
> > +		umount "${path}"
> > +		mount -t nfs "${eth0.serverip}:${mnt}" "${path}"
> > +
> > +		global.bootm.image="${path}/${bootfile}"
> > +	fi
> 
> There is something wrong here. I do not understand what you do here, but
> symlinks are not supposed to bash on them with dirname/basename until
> you get something which fits your needs.
here the issue is that on nfs you need to mount the correct path otherwise you
can not get the real file

so we need to detect it and mount the correct path

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
