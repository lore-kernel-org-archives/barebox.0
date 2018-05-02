Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fDpWl-0004PF-27
 for barebox@lists.infradead.org; Wed, 02 May 2018 11:02:38 +0000
Date: Wed, 2 May 2018 13:02:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180502110214.zsdcwbt3qdgy2y7u@pengutronix.de>
References: <20180429160125.3193-1-mail@schmidt-andreas.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180429160125.3193-1-mail@schmidt-andreas.de>
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
Subject: Re: [PATCH] blspec: add checking of optional key machine-id
To: Andreas Schmidt <mail@schmidt-andreas.de>
Cc: barebox@lists.infradead.org

Hi Andreas,

On Sun, Apr 29, 2018 at 06:01:25PM +0200, Andreas Schmidt wrote:
> For filtering of Bootloader Spec entries, Bootloader Spec
> specify an optional key machine-id. By set the
> global.boot.machine-id variable the checking of machine-id
> key in Bootloader Spec entries will be activate. If the
> variable and key match, appropriate boot entry will be
> booting. If it not match boot entry will be ignore and
> barebox check the next boot entry.
> 
> Signed-off-by: Andreas Schmidt <mail@schmidt-andreas.de>
> ---
> Hi,
> we use the same barebox for all our devices. The devices have
> same CPU-module but different interface boards. So the bootloader
> has to choose the right boot entry. To determine the right boot entry we
> decide to use Bootloader Spec. But we have a issue: Currently, only oftree 
> compatibility is checking by barebox for Bootloader Spec entries. But all 
> our ofstrees are compatible with our barebox, because we use only one. So
> we need a additional possibility to check witch Bootloader Spec entry
> is the right one for appropriate device. I guess, for such an use case
> Bootloader Spec specify "machine-id" key. This patch implement the support
> for machine-id key.
> The machine-id key is optional. I decide to activate the checking of this
> key only if "global.boot.machine_id" variable is set to non-empty value.
> If "global.boot.machine_id" not set machine-id key will be ignored, 
> independent if it exists in Bootloader Spec entry or not.

I like the idea and the patch looks mosty fine.

> +static bool entry_is_match_machine_id(struct blspec_entry *entry)
> +{
> +	int ret = true;
> +	const char *env_machineid = getenv_nonempty("global.boot.machine_id");
> +
> +	if (env_machineid) {
> +		const char *machineid = blspec_entry_var_get(entry, "machine-id");
> +		if (!machineid || strcmp(machineid, env_machineid)) {
> +			pr_info("ignoring entry with missmatched machine-id \"%s\"\n",
> +				env_machineid);

Don't you want to print the machine id of the current entry rather than
the desired machine id?

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
