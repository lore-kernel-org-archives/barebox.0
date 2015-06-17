Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z59JN-0007ny-Ej
 for barebox@lists.infradead.org; Wed, 17 Jun 2015 09:07:10 +0000
Date: Wed, 17 Jun 2015 11:06:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150617090646.GI6325@pengutronix.de>
References: <20150617064250.GA2778@lws-weitzel2@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150617064250.GA2778@lws-weitzel2@phytec.de>
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
Subject: Re: state: access from linux
To: Jan Remmet <J.Remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 17, 2015 at 08:42:50AM +0200, Jan Remmet wrote:
> Hello,
> I'm working with barebox states and wonder if there is already a tool to access
> states in eeprom from linux?
> The states from a dtb backend should be easy to read. For raw there must be
> looked under /proc/devicetree or a state kernel driver.

Yes, there is such a tool here:

git://git.pengutronix.de/git/tools/dt-utils.git

The binary you'll need is barebox-state.

We should probably add this repository to the documentation.

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
