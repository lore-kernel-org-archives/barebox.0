Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJfNL-00068S-Ht
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 13:57:09 +0000
Date: Mon, 5 Nov 2018 14:56:53 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20181105135653.GB22964@ravnborg.org>
References: <20181105072826.912-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181105072826.912-1-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] arm: at91: fix sdram controller init
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Mon, Nov 05, 2018 at 08:28:26AM +0100, Sascha Hauer wrote:
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> e739663535 confused parameters to __raw_writel. The value and the base
> address was mixed up.
> 
> Fixes: e739663535 (arm: at91: code cleanup in at91sam926x_board_init)
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Acked-by: Sam Ravnborg <sam@ravnborg.org>

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
