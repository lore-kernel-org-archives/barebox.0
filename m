Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TDArq-0006jN-CU
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 09:10:19 +0000
Received: by lagu2 with SMTP id u2so3507322lag.36
 for <barebox@lists.infradead.org>; Sun, 16 Sep 2012 02:10:16 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120916081744.GD6180@pengutronix.de>
References: <1347709506-8669-1-git-send-email-marcus.folkesson@gmail.com>
 <20120916081744.GD6180@pengutronix.de>
Date: Sun, 16 Sep 2012 11:10:15 +0200
Message-ID: <CAM8FrKK_KFknE5_kCFB9KgFvNFwNO39Qtuj85i9-zXwaLn-fqA@mail.gmail.com>
From: Marcus Folkesson <marcus.folkesson@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mtd: nand: extend NAND flash detection to new MLC chips
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

2012/9/16 Sascha Hauer <s.hauer@pengutronix.de>
>
> Hi Marcus,
>
> On Sat, Sep 15, 2012 at 01:45:06PM +0200, Marcus Folkesson wrote:
> > Some of the newer MLC devices have a 6-byte ID sequence in which
> > several field definitions differ from older chips in a manner that is
> > not backward compatible.
> >
> > This method is already used in the Linux Kernel.
> >
> > Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>
>
> Applied, thanks. I dropped the patch adding one of the new nand ids
> below from next in favour for this more complete list of new nand ids.

You're welcome.

> BTW do you have one of those chips > 4GiB? I bet barebox does not work out
> of the box with these.
>

No, we are using a 4GiB chip. We are having a few problems to get it
work properly, but this patch solved at least one of the problems...
:-)

Med v=E4nliga h=E4lsningar / Best regards
Marcus Folkesson

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
