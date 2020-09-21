Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKHrY-0004wU-IJ
 for barebox@lists.infradead.org; Mon, 21 Sep 2020 09:11:57 +0000
References: <20200916135035.7089-1-a.fatoum@pengutronix.de>
 <20200916135035.7089-5-a.fatoum@pengutronix.de>
 <20200921084016.GG21278@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <fb4b61db-c51f-fd84-4423-1bf3fa445f43@pengutronix.de>
Date: Mon, 21 Sep 2020 11:11:54 +0200
MIME-Version: 1.0
In-Reply-To: <20200921084016.GG21278@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 04/10] power: reset: reboot-mode: fix up node into boot
 device tree
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

On 9/21/20 10:40 AM, Sascha Hauer wrote:
> On Wed, Sep 16, 2020 at 03:50:29PM +0200, Ahmad Fatoum wrote:
>> Instead of relying that the kernel and barebox device trees are in sync,
>> just enforce it by having barebox fix up the device tree node it probed
>> into the kernel device tree. We usually want that, but some reboot mode
>> drivers might want to inhibit the fixup, e.g. because they implement
>> a non-upstream binding or because they communicate with the BootROM,
>> while the kernel shouldn't. For those the fixup is made optional via
>> a struct reboot_mode_driver::no_fixup member.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/power/reset/reboot-mode.c | 39 +++++++++++++++++++++++++++++++
>>  include/linux/reboot-mode.h       |  1 +
>>  2 files changed, 40 insertions(+)
>>
>> diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
>> index 5992a2acd99a..5fc29ebf8091 100644
>> --- a/drivers/power/reset/reboot-mode.c
>> +++ b/drivers/power/reset/reboot-mode.c
>> @@ -52,6 +52,42 @@ static int reboot_mode_add_param(struct device_d *dev,
>>  	return PTR_ERR_OR_ZERO(param);
>>  }
>>  
>> +static struct device_node *of_get_node_by_reproducible_name(struct device_node *dstroot,
>> +							    struct device_node *srcnp)
>> +{
>> +	struct device_node *dstnp;
>> +	char *name;
>> +
>> +	name = of_get_reproducible_name(srcnp);
>> +	dstnp = of_find_node_by_reproducible_name(dstroot, name);
>> +	free(name);
>> +
>> +	return dstnp;
>> +}
>> +
>> +static int of_reboot_mode_fixup(struct device_node *root, void *ctx)
>> +{
>> +	struct reboot_mode_driver *reboot = ctx;
>> +	struct device_node *dstnp, *srcnp, *dstparent;
>> +
>> +	srcnp = reboot->dev->device_node;
>> +
>> +	dstnp = of_get_node_by_reproducible_name(root, srcnp);
>> +	if (dstnp) {
>> +		dstparent = dstnp->parent;
>> +		of_delete_node(dstnp);
>> +	} else {
>> +		dstparent = of_get_node_by_reproducible_name(root, srcnp->parent);
>> +	}
> 
> \o/ barebox KASan found it's first bug!

\o/

> 
> This ends up in:
> 
> ERROR: ==================================================================
> ERROR: BUG: KASAN: out-of-bounds in of_copy_node+0x11/0x8e
> ERROR: Read of size 4 at addr 2fe0a2a0
> ERROR:
> WARNING: [<4fcd3101>] (unwind_backtrace+0x1/0x100) from [<4fc93e0d>] (kasan_report+0xa9/0x214)
> WARNING: [<4fc93e0d>] (kasan_report+0xa9/0x214) from [<4fc7cd83>] (of_copy_node+0x11/0x8e)
> WARNING: [<4fc7cd83>] (of_copy_node+0x11/0x8e) from [<4fc811b7>] (of_reboot_mode_fixup+0x9f/0xd4)
> WARNING: [<4fc811b7>] (of_reboot_mode_fixup+0x9f/0xd4) from [<4fc0bda9>] (of_fix_tree+0x3d/0x70)
> WARNING: [<4fc0bda9>] (of_fix_tree+0x3d/0x70) from [<4fc0bdf5>] (of_get_fixed_tree+0x19/0x2c)
> WARNING: [<4fc0bdf5>] (of_get_fixed_tree+0x19/0x2c) from [<4fc05ae9>] (bootm_get_devicetree+0x279/0x2b4)
> WARNING: [<4fc05ae9>] (bootm_get_devicetree+0x279/0x2b4) from [<4fcd2111>] (__do_bootm_linux+0xdd/0x1e0)
> WARNING: [<4fcd2111>] (__do_bootm_linux+0xdd/0x1e0) from [<4fcd2299>] (do_bootm_linux+0x85/0xa0)
> WARNING: [<4fcd2299>] (do_bootm_linux+0x85/0xa0) from [<4fc062bd>] (bootm_boot+0x60d/0x684)
> WARNING: [<4fc062bd>] (bootm_boot+0x60d/0x684) from [<4fc820d5>] (do_bootm+0x1b5/0x1f8)
> WARNING: [<4fc820d5>] (do_bootm+0x1b5/0x1f8) from [<4fc06dd3>] (execute_command+0x6b/0xb4)
> WARNING: [<4fc06dd3>] (execute_command+0x6b/0xb4) from [<4fc0f835>] (run_list_real+0x985/0x9f0)
> WARNING: [<4fc0f835>] (run_list_real+0x985/0x9f0) from [<4fc0ed05>] (parse_stream_outer+0x221/0x2a8)
> WARNING: [<4fc0ed05>] (parse_stream_outer+0x221/0x2a8) from [<4fc0fc0b>] (run_shell+0x8b/0xdc)
> WARNING: [<4fc0fc0b>] (run_shell+0x8b/0xdc) from [<4fc01895>] (run_init+0x205/0x264)
> WARNING: [<4fc01895>] (run_init+0x205/0x264) from [<4fc01933>] (start_barebox+0x3f/0xa4)
> WARNING: [<4fc01933>] (start_barebox+0x3f/0xa4) from [<4fcd09f9>] (barebox_non_pbl_start+0x131/0x174)
> WARNING: [<4fcd09f9>] (barebox_non_pbl_start+0x131/0x174) from [<4fc00005>] (__bare_init_start+0x1/0xc)
> 
> This happens in the case when the to-be-fixed up device tree is the internal
> device tree itself. Here of_delete_node(dstnp) is called, but this is
> also srcnp which is then read from.
> 
> The solution might also be to make sure we make a copy of the internal
> tree before doing a of_fixup on it.

As the fixup is just a of_copy from the built-in device tree, we should just skip the
fixup altogether. I can resend the patch later. Could the other ones be applied? :-)

> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
