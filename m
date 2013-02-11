Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U4pg8-0004hG-9F
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 09:28:01 +0000
Date: Mon, 11 Feb 2013 10:27:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130211092758.GR1906@pengutronix.de>
References: <034201ce07e7$c23b9e90$46b2dbb0$@com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <034201ce07e7$c23b9e90$46b2dbb0$@com>
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
Subject: Re: Trouble booting kernel since 2012.12.1
To: George Pontis <GPontis@z9.com>
Cc: barebox@lists.infradead.org

On Sun, Feb 10, 2013 at 03:38:41PM -0800, George Pontis wrote:
> Having some trouble booting Linux from recent versions of barebox, and need
> some pointers about where to look.
> 
> I'm working with custom hardware based on the i.MX53. It is roughly
> comparable to the i.MX53 LOCO board, and I started with that board support
> as a base for my own port. Up through barebox 2012.12.1 things were working
> well. However, with the 2013.01 and 2013.02 releases I can't get the kernel
> to boot successfully. It always hangs after displaying the arch number, but
> before posting the message "Booting Linux on physical CPU 0". All the lines
> displayed up to that point are identical. I have tried booting a kernel via
> TFTP and root FS via NFS. Also with the rootfs loaded as an initrd. The same
> barebox environment, kernel, and rootfs works in both modes when I'm running
> 2012.12.1 or 2012.11.
> 
> I see that a new environment has been introduced during this time, but did
> not do anything to move over to it. Could this be the source of my problem,
> or need I look elsewhere ?

Try booting with bootm -v -v

Also you could enable earlyprintk support in the kernel and pass the
'earlyprintk' parameter on the kernel command line.

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
