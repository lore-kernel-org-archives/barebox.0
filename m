Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFaxc-0005tv-2S
 for barebox@lists.infradead.org; Wed, 02 Oct 2019 09:32:05 +0000
Message-ID: <6673f557f1dc626e64c2514bf9bb93cd2c790a5e.camel@pengutronix.de>
From: Rouven Czerwinski <rcz@pengutronix.de>
Date: Wed, 02 Oct 2019 11:30:09 +0200
In-Reply-To: <20191002075754.9257-1-a.fatoum@pengutronix.de>
References: <6809ed13f6444459cccef85cddc5714d9ea5b22b.camel@pengutronix.de>
 <20191002075754.9257-1-a.fatoum@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ARM: aarch64: save clobbered registers in
 __barebox_arm_entry
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, 2019-10-02 at 09:57 +0200, Ahmad Fatoum wrote:
> arm_early_mmu_cache_invalidate now clobbers x0, x1, x2, which might
> be
> passed by a previous stage bootloader. Have the caller save them.
> ---
> Rouven, does this work for you?

No, this does not fix the issue. I'll take some time to look into this
at a later point.

- rcz


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
