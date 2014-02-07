Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22b.google.com ([2a00:1450:4013:c01::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBl9S-0000ij-N5
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 13:07:27 +0000
Received: by mail-ea0-f171.google.com with SMTP id f15so1551888eak.2
 for <barebox@lists.infradead.org>; Fri, 07 Feb 2014 05:07:01 -0800 (PST)
Message-ID: <52F4DA71.7070301@gmail.com>
Date: Fri, 07 Feb 2014 14:06:57 +0100
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1391640009-3399-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1391640009-3399-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <20140207065811.GD16215@pengutronix.de>
In-Reply-To: <20140207065811.GD16215@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/6] bus: mvebu: add mbus driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Michael Grzeschik <mgr@pengutronix.de>

On 02/07/14 07:58, Sascha Hauer wrote:
> [...]
>
>> +
>> +static const struct mvebu_mbus_soc_data orion5x_2win_mbus_data = {
>> +	.num_wins            = 8,
>> +	.num_remappable_wins = 2,
>> +	.win_cfg_offset      = orion5x_mbus_win_offset,
>> +	.setup_cpu_target    = mvebu_mbus_default_setup_cpu_target,
>> +};
>> +
>> +static const struct mvebu_mbus_soc_data mv78xx0_mbus_data = {
>> +	.num_wins            = 14,
>> +	.num_remappable_wins = 8,
>> +	.win_cfg_offset      = mv78xx0_mbus_win_offset,
>> +	.setup_cpu_target    = mvebu_mbus_default_setup_cpu_target,
>> +};
>
> Don't you end up with unused variable warnings here if not all SoCs are
> enabled? Maybe add some __maybe_unused here.

Hmm, neither V=1 nor W=1 makes gcc shout warnings here. Apparently, this
may be a "bug" in gcc, not producing warnings for unused consts... but
they are not variables strictly speaking.

Removing the const above makes gcc shout, I'll add the __maybe_unused
anyway.

>> +static struct of_device_id mvebu_mbus_dt_ids[] = {

And maybe constify this too.

Sebastian

>> +#if defined(CONFIG_ARCH_ARMADA_370) || defined(CONFIG_ARCH_ARMADA_XP)
>> +	{ .compatible = "marvell,armada370-mbus",
>> +	  .data = (u32)&armada_370_xp_mbus_data, },
>> +	{ .compatible = "marvell,armadaxp-mbus",
>> +	  .data = (u32)&armada_370_xp_mbus_data, },
>> +#endif
>> +#if defined(CONFIG_ARCH_DOVE)
>> +	{ .compatible = "marvell,dove-mbus",
>> +	  .data = (u32)&dove_mbus_data, },
>> +#endif


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
