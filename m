Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VZFNA-0007h6-Ud
 for barebox@lists.infradead.org; Thu, 24 Oct 2013 07:30:25 +0000
Date: Thu, 24 Oct 2013 09:30:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131024073002.GT30088@pengutronix.de>
References: <20131023164800.GD26639@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131023164800.GD26639@ns203013.ovh.net>
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
Subject: Re: [BUG] phycard a l1 on lowlevel
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi J,

On Wed, Oct 23, 2013 at 06:48:00PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi Sasha,
> 
> 	I get this when compiling this board
> 
> Building arm phycard_a_l1_defconfig
> Configure: OK
> /opt/work/barebox/arch/arm/boards/phycard-a-l1/lowlevel.c: In function 'barebox_arm_reset_vector':
> /opt/work/barebox/arch/arm/boards/phycard-a-l1/lowlevel.c:122:3: warning: array subscript is above array bounds

I don't see this here. You probably have a different gcc version.

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
