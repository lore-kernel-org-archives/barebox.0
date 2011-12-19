Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RcayF-0001uG-SM
 for barebox@lists.infradead.org; Mon, 19 Dec 2011 11:01:29 +0000
Date: Mon, 19 Dec 2011 12:01:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111219110120.GK27267@pengutronix.de>
References: <87r50ilxed.fsf@free.fr>
 <CAJfOKBzSOKmZEvmWsWxQ1+yJFxaB-rzCgR2mxTpTUCoA_9W1Mg@mail.gmail.com>
 <87vcpueoqc.fsf@free.fr>
 <CAJfOKBwmX8EwD1hPvYSMddp6sZKJJ5kCBLf9KYWLsjkk4ZAC9A@mail.gmail.com>
 <87r50idnni.fsf@free.fr> <20111207083708.GK27267@pengutronix.de>
 <87mxawxz9e.fsf@free.fr> <8739cmxjy1.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8739cmxjy1.fsf@free.fr>
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
Subject: Re: FAT filesystem write and long names stability
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Thu, Dec 15, 2011 at 10:28:38AM +0100, Robert Jarzmik wrote:
> Robert Jarzmik <robert.jarzmik@free.fr> writes:
> 
> > Sascha Hauer <s.hauer@pengutronix.de> writes:
> >> It would be great if you could give it some testing as obviously my test
> >> patterns didn't reveal the 'create folder' bug you described.
> > Tomorrow or wednesday, I'll make the few tests I always do (making a
> > directory, copying a file, deleting a file, etc ...) and report.
> This is what my tests give back:
> 
> **** With FAT caching (barebox.git/next + rjk mioa701 support):
> barebox:/sdcard time bmp /sdcard/help.bmp 
> time: 6895ms
> barebox:/sdcard time cp /sdcard/help.bmp /sdcard/toto.tmp
> time: 13278ms
> barebox:/sdcard ls -l help.bmp
> -rwxrwxrwx     230454 help.bmp
> barebox:/sdcard 

There is something wrong. These times are far from being acceptable.

Here's what I get with copying a 2MiB file from SD Card:

barebox@Freescale i.MX51 PDK:/ time cp /fat/x /x
time: 273ms

> 
> **** Without FAT caching (merged pu/block into barebox.git/next + rjk mioa701 support)
> barebox:/sdcard time bmp /sdcard/help.bmp
> time: 9219ms
> barebox:/sdcard time cp /sdcard/help.bmp /sdcard/titi.tmp
> BUG: failure at common/block.c:248/block_

Hm, I don't understand where this can come from.

	data = block_get(blk, block);
	if (!data)
		BUG();

So this bug is triggered when block_get fails:

static void *block_get(struct block_device *blk, int block)
{
	void *outdata;
	int ret;

	if (block >= blk->num_blocks)
		return NULL;

	outdata = block_get_cached(blk, block);
	if (outdata)
		return outdata;

	ret = block_cache(blk, block);
	if (ret)
		return NULL;

	outdata = block_get_cached(blk, block);
	if (!outdata)
		BUG();

	return outdata;
}

So block_get fails when

a) You access some block outside the device (which should have been
   caught earlier
b) block_cache fails. (This indeed can fail when the underlying hardware
   fails to read the block, so the BUG should be replaced with a simple
   error return)

> 
> The "BUG" thing prevents me from going further. But it seems the cache in main
> tree speeds up things. I also think that creating directories without files
> serves no purpose I can think of, and is an acceptable tradeoff for the improved
> performance.

It's not only the creating-directory-without-files thing, The FAT can
become corrupted in current mainline, so we have to do something.

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
