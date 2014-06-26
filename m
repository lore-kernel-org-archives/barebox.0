Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22f.google.com ([2a00:1450:400c:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X01N3-0002z0-Se
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 04:33:14 +0000
Received: by mail-we0-f175.google.com with SMTP id k48so3007114wev.34
 for <barebox@lists.infradead.org>; Wed, 25 Jun 2014 21:32:51 -0700 (PDT)
Date: Thu, 26 Jun 2014 06:27:14 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140626042711.GA3858@omega>
References: <1403469255-9019-1-git-send-email-alex.aring@gmail.com>
 <1403469255-9019-2-git-send-email-alex.aring@gmail.com>
 <53A74FC0.7080206@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53A74FC0.7080206@gmail.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC 2/2] dns325: initial support for D-Link DNS-325
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

On Sun, Jun 22, 2014 at 11:50:56PM +0200, Sebastian Hesselbarth wrote:
> On 06/22/2014 10:34 PM, Alexander Aring wrote:
> > This patch add a basic support for the D-Link DNS-325.
> > 
> > Currently only booting via uart with kwboot is supported. The barebox
> > kwboot utility doesn't work at the moment. Use kwboot utility from u-boot
> > instead.
> 
> Why does kwboot does not work? There is an issue with early Kirkwood's
> BootROM and UART boot mode. Just try over and over again. I also recall
> modifying the timeouts may help.
> 

I tried to change the timeouts and it works now. I take these timings from
u-boot. Is there any reason why these timings differs?

Datasheet says nothing about any delay while loop for sending bootmsg.


Here is my diff with the very small change:

diff --git a/scripts/kwboot.c b/scripts/kwboot.c
index e068660..bcb5972 100644
--- a/scripts/kwboot.c
+++ b/scripts/kwboot.c
@@ -34,8 +34,8 @@ static unsigned char kwboot_msg_debug[] = {
        0xDD, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77
 };
 
-#define KWBOOT_MSG_REQ_DELAY   1000 /* ms */
-#define KWBOOT_MSG_RSP_TIMEO   1000 /* ms */
+#define KWBOOT_MSG_REQ_DELAY   10 /* ms */
+#define KWBOOT_MSG_RSP_TIMEO   50 /* ms */
 
 /*
  * Xmodem Transfers



btw.:

Now I see that the internal ROM bootloader could also boot from SATA
device - this sounds interesting. I will try that next weekend.


Thanks for your great help Sebastian!

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
