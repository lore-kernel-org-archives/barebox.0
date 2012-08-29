Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og107.obsmtp.com ([64.18.0.184])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T6ioF-0001zQ-5U
 for barebox@lists.infradead.org; Wed, 29 Aug 2012 13:59:56 +0000
Message-ID: <503E2056.5050305@ge.com>
Date: Wed, 29 Aug 2012 14:59:50 +0100
From: Renaud Barbier <renaud.barbier@ge.com>
MIME-Version: 1.0
References: <1345648133-31721-1-git-send-email-renaud.barbier@ge.com>
 <1345648133-31721-3-git-send-email-renaud.barbier@ge.com>
 <20120828091913.GF26594@pengutronix.de>
In-Reply-To: <20120828091913.GF26594@pengutronix.de>
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
Subject: Re: [PATCH 2/3] Freescale I2C driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 28/08/12 10:19, Sascha Hauer wrote:

> 
> These defines look awfully familiar. Can we use
> drivers/i2c/busses/i2c-imx.c instead of adding a new driver?
It indeed does work on the ppc P2020rdb after setting the clock.

Question: is the included header <gpio.h> necessary in the imx I2C driver?
> 
> Sascha
> 
> 


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
