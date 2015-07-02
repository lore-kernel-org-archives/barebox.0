Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZAXGb-0002Zg-Gj
 for barebox@lists.infradead.org; Thu, 02 Jul 2015 05:42:34 +0000
Date: Thu, 2 Jul 2015 07:42:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150702054208.GE18611@pengutronix.de>
References: <CABQt-UnvAoFHp_4LJvH0Q6AFw8US2vhcb_nOGGmjfAaCXrOFWQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABQt-UnvAoFHp_4LJvH0Q6AFw8US2vhcb_nOGGmjfAaCXrOFWQ@mail.gmail.com>
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
Subject: Re: how to do a digest on a flashed uImage ?
To: Philippe Leduc <ledphilippe@gmail.com>
Cc: barebox@lists.infradead.org

Hi Philippe,

On Wed, Jul 01, 2015 at 09:02:28AM +0200, Philippe Leduc wrote:
> Hello,
> 
> I have a uImage saved in a memory partition and I am able to boot on
> it with bootm command. I would like to add a digest (like a
> hmac(sha1)) in order to check the integrity of the binary before
> booting on it.
> 
> Because my partition is bigger than my uImage, I don't know how to use
> digest on it.
> In fact there are two problems that I don't know how to solve: I can't
> get the size of my file and I can't ask digest to work on COUNT bytes.
> 
> For the size problem: I can extract the size of the uImage in binary
> form since this information is present in the uImage header (via
> memcpy), but I don't know how to convert it in a format compatible
> with Hush.
> 
> For digest, I can copy the binary in the RAM, but I fear that it is
> longer than working on the flash: it takes 4,8s to memcpy the uImage
> in a RAM file, and less than 3s to bootm on the flash. But
> 
> 
> Do you know a way to get the size of a file? Or to convert a binary
> size into a "human readable format" for Hush? Or should I develop a
> kind of "stat" utility for barebox?
> Thank you in advance,

I can't think of a way on the shell to accomplish this. Something that
might come close is uImagefs. You can mount an uImage as a filesystem,
then you can run digest on the individual contents of the image, but not
of the whole image itself.

Also extracting the size from the image via memcpy and somehow convert
the value to hex, then memcpy the uImage to a file sounds fragile. I
would probably add a option to the uimage command, like -c for copy.
In C it's easy to sanity check the size you read and to verify the
header checksum before doing anything else. You can't do that in shell.

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
