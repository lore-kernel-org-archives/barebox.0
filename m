Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dUweT-0000jL-VI
 for barebox@lists.infradead.org; Tue, 11 Jul 2017 15:00:39 +0000
Message-ID: <1499785216.5060.5.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 11 Jul 2017 17:00:16 +0200
In-Reply-To: <1499694547.2924.22.camel@pengutronix.de>
References: <20170710103355.15652-1-s.trumtrar@pengutronix.de>
 <20170710103355.15652-6-s.trumtrar@pengutronix.de>
 <1499694547.2924.22.camel@pengutronix.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH v2 6/9] efi: efi: load state from devicetree
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Montag, den 10.07.2017, 15:49 +0200 schrieb Lucas Stach:
> Am Montag, den 10.07.2017, 12:33 +0200 schrieb Steffen Trumtrar:
> > Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> 
> This commit breaks compilation of the efi_defconfig with:
> barebox/common/efi/efi.c:427: undefined reference to `state_new_from_node'
> barebox/common/efi/efi.c:431: undefined reference to `state_load'
> 
> You probably don't want to compile in this initcall when !CONFIG_STATE.

I've added a fix for this while applying.

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
