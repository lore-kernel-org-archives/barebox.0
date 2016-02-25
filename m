Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYriv-0002gN-MA
 for barebox@lists.infradead.Org; Thu, 25 Feb 2016 08:56:38 +0000
Date: Thu, 25 Feb 2016 09:56:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160225085615.GD3939@pengutronix.de>
References: <CABQt-U=y5nfNQpb88nEF4cRkL7oLQ+a09YYspQPnhPyX4kLQgw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABQt-U=y5nfNQpb88nEF4cRkL7oLQ+a09YYspQPnhPyX4kLQgw@mail.gmail.com>
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
Subject: Re: mount fat regression
To: Philippe Leduc <ledphilippe@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Feb 24, 2016 at 05:44:42PM +0100, Philippe Leduc wrote:
> Hi,
> 
> It seems that there is a regression in the mount command for fat
> filesystem: if I try to mount a partition that is formatted with
> fatfs, I got this error:
> 
> mount /dev/mmc2.netcom
> mount: No such file or directory
> 
> I do not have the problem with a fat formatted with Windows or Linux.
> 
> Do you have an idea?

Are you sure this is a regression? Did this work before? I don't think
that FAT support in general is broken, it's probably something with your
special setup.

What does 'filetype /dev/mmc2.netcom' give you?

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
