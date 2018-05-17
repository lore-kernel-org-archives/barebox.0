Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJCud-0006h9-Af
 for barebox@lists.infradead.org; Thu, 17 May 2018 07:01:25 +0000
Date: Thu, 17 May 2018 09:01:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180517070106.lkorcut6qwmwx7qi@pengutronix.de>
References: <20180516164233.27581-1-linux@rempel-privat.de>
 <20180516164233.27581-5-linux@rempel-privat.de>
 <20180516213415.vbeujmqeoavy2bmh@sheep>
 <c5a0aaa4-e341-ed70-0502-15cd0c3c4a22@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c5a0aaa4-e341-ed70-0502-15cd0c3c4a22@rempel-privat.de>
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
Subject: Re: [PATCH v1 04/10] bootm: add kexec ELF support
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

On Thu, May 17, 2018 at 06:52:10AM +0200, Oleksij Rempel wrote:
> Am 16.05.2018 um 23:34 schrieb Peter Mamonov:
> > Hi!
> > 
> > On Wed, May 16, 2018 at 06:42:27PM +0200, Oleksij Rempel wrote:
> >> From: Antony Pavlov <antonynpavlov@gmail.com>
> >>
> >> +int kexec_load_bootm_data(struct image_data *data)
> >> +{
> >> +	int ret;
> >> +	struct kexec_info info;
> >> +	char *cmdline;
> >> +	const char *t;
> >> +	size_t tlen;
> >> +	size_t fsize;
> >> +	char initrd_cmdline[40];
> >> +	int padded = 0;
> >> +
> >> +	memset(&info, 0, sizeof(info));
> >> +
> >> +	initrd_cmdline[0] = 0;
> >> +
> >> +	ret = kexec_load_one_file(&info, data->os_file);
> >> +	if (IS_ERR_VALUE(ret)) {
> >> +		pr_err("Cannot load %s\n", data->os_file);
> >> +		return ret;
> >> +	}
> > 
> > There is a potential problem here, which I actually hit some time ago. The 
> > following code places kernel arguments right after os image. This is perfectly 
> > fine in case of vmlinuX. However, if one boots a vmlinuZ image, there is no 
> > easily available knowledge of where the decompressed image will reside. In my 
> > case vmlinux' BSS overlapped with DTB and kernel cmdline segments and was 
> > zeroed at linux startup. This was fixed by adding an empty 4k segment at 128M, 
> > so further segments were allocated beyond 128M, far enough from the kernel 
> > lair:
> > 
> > 	+       /* FIXME: allocate 4k segment @ 0x8000000 (128M), so further
> > 	+        * segments will be allocated beyond this address.  This prevents
> > 	+        * kernel parameters from being overwritten by the kernel startup code.
> > 	+        */
> > 	+       add_segment(&info, (void *)CKSEG0ADDR(0), 4 << 10, 0x8000000, 4 << 10);
> > 
> > However this is an ad-hoc solution and, probably, find_unused_base() may take 
> > care of such cases.
> 
> Yes, correct. This and some other issues would be fixed by porting this
> part of the code to bootm_load_devicetree() + find_unused_base(). Since
> my time budget is on the limit, I would prefer to mainline current state
> of the code ("works for me" TM) and provide platform for testing and
> cooperation.

Can we at least detect that the image is a compressed one and bail out
with an error? It would be a pity when someone else has to figure out
this bug the hard way now that we already know that it exists.

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
