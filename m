Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSJuZ-0003Ti-GW
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 10:51:13 +0000
Date: Thu, 29 Nov 2018 11:50:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181129105059.eigz6szza7xwg2qk@pengutronix.de>
References: <1b0d8708-3da5-0ff6-ed99-3531a4bcf58d@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1b0d8708-3da5-0ff6-ed99-3531a4bcf58d@denx.de>
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
Subject: Re: CONFIG_AUTOBOOT_STOP_STR to stop autoboot in barebox
To: Parthiban Nallathambi <pn@denx.de>
Cc: barebox@lists.infradead.org

Hi, Parthiban,

On Wed, Nov 28, 2018 at 03:44:17PM +0100, Parthiban Nallathambi wrote:
> Hello All,
> 
> I see there are they ways to stop the autoboot in barebox as of now,
> 
> - ENTER
> - Ctrl - C
> - Any single Key
> 
> please correct me if I have missed anything.
> 
> Question: Do we have option for sequence of character to stop the
> autoboot?

Simple answer: No, we don't have that yet.

Patches welcome ;)

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
