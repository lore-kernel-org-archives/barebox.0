Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YxVDQ-000345-M9
 for barebox@lists.infradead.org; Wed, 27 May 2015 06:53:25 +0000
Date: Wed, 27 May 2015 08:53:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150527065300.GP6325@pengutronix.de>
References: <CABP==CLFeG59X3OyMxJrxTzWDg-Xm8dURb-k-JXu3as+pY5mKA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABP==CLFeG59X3OyMxJrxTzWDg-Xm8dURb-k-JXu3as+pY5mKA@mail.gmail.com>
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
Subject: Re: Programatically write in a file in the environnent with a hush
 command
To: Jean-Christophe BEGUE <begue.jc@gmail.com>
Cc: barebox@lists.infradead.org

Hi Jean-Christophe,

On Tue, May 26, 2015 at 05:41:06PM +0200, Jean-Christophe BEGUE wrote:
> Hello,
> 
> I'm trying to pass a value from Barebox to the operating system, using
> the usreland command bareboxenv -l.
> 
> My problem is : How should I write that status from my hush barebox script?
> 
> echo $mystatus > /env/data/my_status_file
> 
> The above command doesn't work as '>' is not implemented.
> 
> I've the feeling that I'm missing something?

Besides the ways Alexander just mentioned you could also add something
to the kernel cmdline and parse /proc/cmdline later in userspace.
Still another possibility is to add nodes/properties to the device tree
using the of_* commands.

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
