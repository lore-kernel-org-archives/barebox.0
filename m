Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cdtdJ-0005NU-SF
 for barebox@lists.infradead.org; Wed, 15 Feb 2017 07:04:16 +0000
Date: Wed, 15 Feb 2017 08:03:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170215070343.zzb7njup3opvbsfd@pengutronix.de>
References: <3c0aa707-bb93-df05-e9e2-a3810995ad1f@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3c0aa707-bb93-df05-e9e2-a3810995ad1f@rempel-privat.de>
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
Subject: Re: problems with ext4
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org

Hi Oleksij,

On Tue, Feb 14, 2017 at 03:22:29PM +0100, Oleksij Rempel wrote:
> Hallo all,
> 
> i'm trying to use Barebox on BeagleBone Black with plain debian sid
> installation. Most of it seems to work fine, except that i can't boot
> from ext4 boot partition. The reason is that some files and folders are
> not readable. For example /boot/dtbs should contain another folder, but
> barebox recognize it as file.

What should I say, I have seen the code, it doesn't make me wonder. You
could look at the U-Boot commit log and see if you find something there
that helps

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
