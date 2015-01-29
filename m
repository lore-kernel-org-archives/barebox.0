Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGjec-0003xp-Sf
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 07:36:43 +0000
Date: Thu, 29 Jan 2015 08:36:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150129073619.GP12209@pengutronix.de>
References: <1422308027-13836-1-git-send-email-robert.jarzmik@free.fr>
 <1422308027-13836-2-git-send-email-robert.jarzmik@free.fr>
 <20150128090028.GB12209@pengutronix.de> <87oapio6up.fsf@free.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87oapio6up.fsf@free.fr>
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
Subject: Re: [PATCH 2/2] ARM: pxa: add lubbock board support
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: barebox@lists.infradead.org

On Wed, Jan 28, 2015 at 11:53:02PM +0100, Robert Jarzmik wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> > On Mon, Jan 26, 2015 at 10:33:47PM +0100, Robert Jarzmik wrote:
> >> +
> >> +static int lubbock_mem_init(void)
> >> +{
> >> +	arm_add_mem_device("ram0", 0xa0000000, SZ_64M);
> >> +	arm_add_mem_device("sram0", 0x0a000000, SZ_1M);
> >
> > When doing this you'll end up with the SRAM being in ATAGS which is
> > probably not what you want. Use add_mem_device() instead.
> Right, for v2.
> 
> > No hardcoded MAC addresses please. barebox generates a random MAC
> > address for you if your board is unable to provide a real one.
> 
> I'll remove that from the upstreamed patch. I'll keep it for me for my ISP
> router to give me consistently the same IP address through DHCP.
> 
> >> +dhcp -H lubbock
> >
> > dhcp during init time? This unnecessarily delays the boot process when
> > booting from flash.
> >
> > This environment looks very specific to your usecase. Can't you just use
> > the generic defenv-2 template?
> I'll try for v2, yes.
> Speaking of which, this implies one redundant information :
>  - the env/init/mtdpart-nor to define partitions (including bareboxenv)
>  - the code to add env0:
>    devfs_add_partition("nor0", SZ_2M, SZ_256K, DEVFS_PARTITION_FIXED, "env0")
> 
> This means that if the partition scheme changes, barebox binary has to be
> recompiled and reflashed. Isn't there a better way ? (that was what my
> mtd_env_override tried to do btw).

I don't know a better way. If we put the partition information into the
environment partition then by definition the information where to find
the environment must be somewhere else.

The more time passes the more I wonder why I didn't look at redboot
partition tables. It's the only way I know that stores the partition
table for raw flashes where it belongs: on the device.

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
