Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
	helo=mo2.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RCl1J-0007TY-3W
	for barebox@lists.infradead.org; Sun, 09 Oct 2011 04:29:50 +0000
Received: from mail180.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo2.mail-out.ovh.net (Postfix) with SMTP id CD180DCE533
	for <barebox@lists.infradead.org>;
	Sun,  9 Oct 2011 06:31:39 +0200 (CEST)
Date: Sun, 9 Oct 2011 06:05:55 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111009040555.GH10459@game.jcrosoft.org>
References: <1318101878-12808-1-git-send-email-marek.belisko@open-nandra.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1318101878-12808-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: Re: [PATCH] mach-nomadik: Fix compilation error.
To: Marek Belisko <marek.belisko@open-nandra.com>
Cc: barebox@lists.infradead.org

On 21:24 Sat 08 Oct     , Marek Belisko wrote:
> Fix folowing:
> arch/arm/mach-nomadik/8815.c:39:26: error: array type has incomplete element type
> arch/arm/mach-nomadik/8815.c:40:2: warning: implicit declaration of function 'CLKDEV_DEV_ID'
> 
> Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
already in the tree


Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
