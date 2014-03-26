Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WShIS-0004RK-Ea
 for barebox@lists.infradead.org; Wed, 26 Mar 2014 06:26:45 +0000
Date: Wed, 26 Mar 2014 07:26:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140326062619.GP17250@pengutronix.de>
References: <CA+dawz0DeA4+LWqamXp-tPDyWXW1JXfov-u2xdPBrSEsdFuZ3Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+dawz0DeA4+LWqamXp-tPDyWXW1JXfov-u2xdPBrSEsdFuZ3Q@mail.gmail.com>
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
Subject: Re: Can i access the barebox env from linux
To: Ashutosh Singh <embedded.ashu@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Mar 26, 2014 at 11:25:07AM +0530, Ashutosh Singh wrote:
> Dear All,
> 
> Can i access the barebox env from linux.
> Once the kernel boot if i want to create a directory and store some parameter
> in default barebox /env folder without going to barebox from kernel.
> For Eg.
> I booted the board i get the linux promt and depending on some condition
> i want to update the barebox env and create a directory in /env so the
> next time
> when barebox is loading the kernel image it can check that directory
> and according
> to that it can select the kernel from any source such as mmc, nand, nor, tftp.
> 
> What i observe that after the kernel boot i can see the barebox.env is
> mounted as mtdblock5 (case of Nand)
> now according to my understanding can i mount this partition modify
> with my custom directory
> and again boot so that this directory is available in barebox /env .

There is no filesystem support for the barebox environment, but you can
access the barebox env under Linux using the bareboxenv tool. Enable
 [x] build bareboxenv tool for target
and you'll find the tool under scripts/

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
