Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo3.mail-out.ovh.net ([87.98.172.249]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TQeY3-0005ZF-PD
 for barebox@lists.infradead.org; Tue, 23 Oct 2012 13:29:36 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id C9292FFC8A4
 for <barebox@lists.infradead.org>; Tue, 23 Oct 2012 15:39:16 +0200 (CEST)
Date: Tue, 23 Oct 2012 15:27:19 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121023132719.GK21588@game.jcrosoft.org>
References: <20121022160341.GF21588@game.jcrosoft.org>
 <1350922048-25699-1-git-send-email-plagnioj@jcrosoft.com>
 <1350922048-25699-2-git-send-email-plagnioj@jcrosoft.com>
 <20121023085906.GR27665@pengutronix.de>
 <20121023102059.GH21588@game.jcrosoft.org>
 <20121023125654.GT27665@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121023125654.GT27665@pengutronix.de>
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
Subject: Re: [PATCH 2/3] envfs: add command_abi_version support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 14:56 Tue 23 Oct     , Sascha Hauer wrote:
> On Tue, Oct 23, 2012 at 12:20:59PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > 
> > > We may have to introduce min/max, I'm not sure on that.
> > no if your env is compatible with more recent but back compatible too
> > 
> > as you do this with the example of mount update I did recently
> > 
> > if [ $command_abi_version -lt 1 ]
> > then
> > 	mount /dev/disk0.0 fat /mnt
> > else
> > 	mount /dev/disk0.0 /mnt
> > fi
> 
> That is going to be *very* painful.
no the idea is to allow it for external script or if we want to load an env
for multiple version of barebox

remote udpate
or boot script store on a usb key or mmc and that can be used on different
version of barebox because in production we use different version of barebox
in the life time of the product

env generate by barebox are for the current version

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
