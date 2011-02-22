Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Prr0l-0006A1-7q
	for barebox@lists.infradead.org; Tue, 22 Feb 2011 12:06:36 +0000
Date: Tue, 22 Feb 2011 13:02:28 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110222120228.GD31436@game.jcrosoft.org>
References: <1298374366-6956-1-git-send-email-mkl@pengutronix.de>
	<1298374366-6956-3-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1298374366-6956-3-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH V2 2/3] at91sam9g45_devices: don't hardcode nand ecc mode
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org, sha@pengutronix.de

On 12:32 Tue 22 Feb     , Marc Kleine-Budde wrote:
> Hardware ECC is currently not working on the at91sam9g45. So give the user a
> change to specify software ecc mode.
> 
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
I prefer we detect it in the nand driver
than the user select it
and ise the user choice if not detection failled or forced

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
