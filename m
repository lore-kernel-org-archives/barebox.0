Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YEZ22-0003c6-8a
 for barebox@lists.infradead.org; Fri, 23 Jan 2015 07:51:55 +0000
Date: Fri, 23 Jan 2015 08:51:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150123075129.GY12209@pengutronix.de>
References: <1421911613-9188-1-git-send-email-voice.shen@atmel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1421911613-9188-1-git-send-email-voice.shen@atmel.com>
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
Subject: Re: [PATCH] ARM: atmel: sama5d3xek: let emac auto detect phy addr
To: Bo Shen <voice.shen@atmel.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 22, 2015 at 03:26:53PM +0800, Bo Shen wrote:
> On the SAMA5D35 the EMAC phy addr is 1 while not 0. So, let
> the EMAC auto detect phy addr, or else hard code to 0, the
> ethernet can not work on SAMA5D35 board.
> 
> Signed-off-by: Bo Shen <voice.shen@atmel.com>

There ere boards with different phy addresses around, so
the current state does not work on all boards anyway. So the worst
thing that can happen with this and the other patch for the gmac is
that now another set of boards does not work. Let's give it a try.
I'm open to reports when now some board stops working.

Applied this and the gmac patch.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
