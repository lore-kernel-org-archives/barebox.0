Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WIYZt-0003MC-KT
 for barebox@lists.infradead.org; Wed, 26 Feb 2014 07:06:50 +0000
Date: Wed, 26 Feb 2014 08:06:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140226070625.GY17250@pengutronix.de>
References: <OF4A88C9BC.8447C457-ONC1257C8B.0023CBB0-C1257C8B.0023CBB5@o0802.rafi.inhouse>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <OF4A88C9BC.8447C457-ONC1257C8B.0023CBB0-C1257C8B.0023CBB5@o0802.rafi.inhouse>
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
Subject: Re: i.MX6Q Boot from NAND
To: andreas.willig@rafi.de
Cc: barebox@lists.infradead.org

Hi ANdreas,

On Wed, Feb 26, 2014 at 07:30:59AM +0100, andreas.willig@rafi.de wrote:
> Hi,
> 
> has anyone in the community successfully managed to get Barebox
> running out of NAND on i.MX6Q/DL? I cannot find any support for BCB /
> FCB in the BB sources and am hitting problems while migrating from
> i.mx28 (MXS?) sources of BCB. U-Boot seems to run from NAND on i.MX6Q
> but is not an option for our project.

So far I used kobs-ng for doing this, I didn't have luck with migrating
the i.MX28 BCB code so far. Somebody asked the same question a while
ago, but I can't remember who it was. He didn't report success so far
either.

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
