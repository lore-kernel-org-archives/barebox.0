Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ti80n-0006uk-8e
 for barebox@lists.infradead.org; Mon, 10 Dec 2012 18:23:30 +0000
Date: Mon, 10 Dec 2012 19:23:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121210182325.GL10369@pengutronix.de>
References: <50C61165.4070200@kiwigrid.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <50C61165.4070200@kiwigrid.com>
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
Subject: Re: ethernet doesn't work after update to v2012.12.0
To: "Wjatscheslaw Stoljarski (Slawa)" <wjatscheslaw.stoljarski@kiwigrid.com>
Cc: barebox@lists.infradead.org

On Mon, Dec 10, 2012 at 05:44:21PM +0100, Wjatscheslaw Stoljarski (Slawa) wrote:
> Hi All,
> 
> after updating to the version 2012.12.0 ethernet doesn't work
> anymore. My system is iMX53, ethernet Interface: MII100. What could
> be the cause?
> 

Sorry, networking in the v2012.12.0 Release is broken with the generic
phy driver. I will post a fixup patch tomorrow and a fixup release later
this week. See this for background:

http://www.spinics.net/lists/u-boot-v2/msg11501.html

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
