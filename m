Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XyiLK-0003ap-Px
 for barebox@lists.infradead.org; Wed, 10 Dec 2014 14:34:19 +0000
From: Marek Vasut <marex@denx.de>
Date: Wed, 10 Dec 2014 13:28:05 +0100
References: <1418151816-24593-1-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1418151816-24593-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Message-Id: <201412101328.05165.marex@denx.de>
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
Subject: Re: MXS initialization support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tuesday, December 09, 2014 at 08:03:23 PM, Sascha Hauer wrote:
> The following adds initialization support for Freescale MXS SoCs.
> With this the imfamous Freescale Bootlets can finally be replaced.
> The initialization code is based on the corresponding U-Boot code,
> thank you Marek for making this possible.

Woohoo, another slab of code in barebox :)

Would you by any chance be able to synchronise bugfixes between the two (uboot 
and barebox) codebases please ? That'd be really helpful.

Thanks!

Best regards,
Marek Vasut

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
