Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WAxhZ-0002qK-VT
 for barebox@lists.infradead.org; Wed, 05 Feb 2014 08:19:22 +0000
Date: Wed, 5 Feb 2014 09:18:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140205081859.GY16215@pengutronix.de>
References: <4C598A31AEBE214FB619D7F2DC3BD8AB0127A14A86@MSI0E01.MSI.Local>
 <4C598A31AEBE214FB619D7F2DC3BD8AB0127A14AD3@MSI0E01.MSI.Local>
 <20140204071748.GP16215@pengutronix.de>
 <4C598A31AEBE214FB619D7F2DC3BD8AB0127A14BF9@MSI0E01.MSI.Local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4C598A31AEBE214FB619D7F2DC3BD8AB0127A14BF9@MSI0E01.MSI.Local>
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
Subject: Re: barebox env userspace
To: "Balasa, Bogdan" <BBalasa@Morganschaffer.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Feb 04, 2014 at 02:14:17PM +0000, Balasa, Bogdan wrote:
> Hi,
> Is not working when modifying in userspace the '/init/general' file, the line:
> 'global.boot.default=nand'
> to: 'global.boot.default=two'
> 
> and after reset barebox was not taking into account this change.
> I needed to enter in barebox abd send a saveenv in barebox such that the content of '/init/general'
> to be saved in the persistent storage (I think dev/env0).

I think the problem is that the variable is overwritten later, at least
that's what I rememember from the Phytec barebox. Try removing that file
and modify /env/config instead.

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
