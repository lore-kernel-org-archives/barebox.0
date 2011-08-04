Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo3.mail-out.ovh.net ([87.98.150.177]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QomEW-0007xQ-HU
	for barebox@lists.infradead.org; Thu, 04 Aug 2011 00:56:21 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id B8E0FFFB0C9
	for <barebox@lists.infradead.org>;
	Thu,  4 Aug 2011 02:57:28 +0200 (CEST)
Date: Thu, 4 Aug 2011 02:38:11 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110804003811.GG24730@game.jcrosoft.org>
References: <1312408558-21782-1-git-send-email-marek.belisko@open-nandra.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1312408558-21782-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: Re: [PATCH-next] ARM: Fix compilation error.
To: Marek Belisko <marek.belisko@open-nandra.com>
Cc: barebox@lists.infradead.org

On 23:55 Wed 03 Aug     , Marek Belisko wrote:
> Fix following error:
> arch/arm/include/asm/mmu.h:29:19: error: conflicting types for 'mmu_init'
> arch/arm/include/asm/mmu.h:10:6: note: previous declaration of 'mmu_init' was here
> arch/arm/include/asm/mmu.h: In function 'mmu_init':
> arch/arm/include/asm/mmu.h:31:10: error: 'EINVAL' undeclared (first use in this function)
> arch/arm/include/asm/mmu.h:31:10: note: each undeclared identifier is reported only once for each function it appears in
> 
> Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
> ---
we are goind to it anyway

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
