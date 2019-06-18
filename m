Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd6u5-00051p-EL
 for barebox@lists.infradead.org; Tue, 18 Jun 2019 05:43:34 +0000
Message-ID: <522345746d864e309cd076e66712bf2ec02ab436.camel@pengutronix.de>
From: Rouven Czerwinski <rcz@pengutronix.de>
Date: Tue, 18 Jun 2019 07:43:29 +0200
In-Reply-To: <c51346bb-3224-1a04-181e-c560f9d4d309@pengutronix.de>
References: <20190617150751.3421-1-a.fatoum@pengutronix.de>
 <20190617150751.3421-9-a.fatoum@pengutronix.de>
 <c51346bb-3224-1a04-181e-c560f9d4d309@pengutronix.de>
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
Subject: Re: [PATCH v1 08/12] ARM: stm32mp157c-dk2: add board-specific
 sysconf fixups
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

> Skipping this if TF-A was loaded beforehand seems to be just an
> optimization
> that shouldn't affect correctness. But the PSCI stuff installed by
> barebox
> and TF-A if used may be another matter.
> 
> Rouven, any idea how to check if TF-A was first stage? Would checking
> if barebox
> is in non-secure mode work?

Unfortunately, no. ARMv7a does not provide any means to check whether
the processor is in secure state (which would indicate that no secure
monitor has been installed). Accesses to the secure configuration
register which contain the NS bit will result in an abort, however I
currently don't remember whether this abort is taken in secure or non-
secure mode.

Regards,
Rouven Czerwinski
-- 
Pengutronix e.K.                           |            		 |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
