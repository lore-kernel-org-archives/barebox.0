Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1O8tqM-0005fm-Rr
	for barebox@lists.infradead.org; Mon, 03 May 2010 11:29:47 +0000
Received: by wwf26 with SMTP id 26so1130065wwf.36
	for <barebox@lists.infradead.org>; Mon, 03 May 2010 04:29:45 -0700 (PDT)
From: Peter Korsgaard <jacmet@sunsite.dk>
References: <1272527535-17527-1-git-send-email-s.hauer@pengutronix.de>
	<1272527535-17527-10-git-send-email-s.hauer@pengutronix.de>
Date: Mon, 03 May 2010 13:29:40 +0200
In-Reply-To: <1272527535-17527-10-git-send-email-s.hauer@pengutronix.de>
	(Sascha Hauer's message of "Thu, 29 Apr 2010 09:52:07 +0200")
Message-ID: <87eihtdxzv.fsf@macbook.be.48ers.dk>
MIME-Version: 1.0
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
Subject: Re: [PATCH 09/17] pcm043: Speed up NAND controller before copying
	barebox image
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

>>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:

 Sascha> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
 Sascha> ---
 Sascha>  board/pcm043/pcm043.c |    7 +++++++
 Sascha>  1 files changed, 7 insertions(+), 0 deletions(-)

 Sascha> diff --git a/board/pcm043/pcm043.c b/board/pcm043/pcm043.c
 Sascha> index 2ce7e3a..d8cd7b8 100644
 Sascha> --- a/board/pcm043/pcm043.c
 Sascha> +++ b/board/pcm043/pcm043.c
 Sascha> @@ -393,6 +393,13 @@ BAREBOX_CMD_END
 Sascha>  #ifdef CONFIG_NAND_IMX_BOOT
 Sascha>  void __bare_init nand_boot(void)
 Sascha>  {
 Sascha> +	u32 val;
 Sascha> +
 Sascha> +	val = readl(IMX_CCM_BASE + CCM_PDR4);
 Sascha> +	val &= ~(0xf << 28);
 Sascha> +	val |= 0x1 << 28;
 Sascha> +	writel(val, IMX_CCM_BASE + CCM_PDR4);

A comment describing what this does might be nice.

-- 
Bye, Peter Korsgaard

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
