Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk0-x244.google.com ([2607:f8b0:400d:c09::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cQxvn-0002cx-Lg
 for barebox@lists.infradead.org; Tue, 10 Jan 2017 15:01:50 +0000
Received: by mail-qk0-x244.google.com with SMTP id 11so11201760qkl.0
 for <barebox@lists.infradead.org>; Tue, 10 Jan 2017 07:01:27 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170109120028.rmlau62fksph6aeq@pengutronix.de>
References: <1481565788-9115-1-git-send-email-andrew.smirnov@gmail.com>
 <1481565788-9115-13-git-send-email-andrew.smirnov@gmail.com>
 <20170109120028.rmlau62fksph6aeq@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Jan 2017 07:01:25 -0800
Message-ID: <CAHQ1cqFQs+gJh-3+KJ+7vRCsyo2UWGmYZANUnheeBOMYSygvFw@mail.gmail.com>
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
Subject: Re: [PATCH v2 12/21] i.MX: iomuxv3: Add helper type to deconstruct
 iomux_v3_cfg_t values
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, Jan 9, 2017 at 4:00 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Mon, Dec 12, 2016 at 10:02:59AM -0800, Andrey Smirnov wrote:
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  arch/arm/mach-imx/include/mach/iomux-v3.h | 16 ++++++++++++++++
>>  1 file changed, 16 insertions(+)
>>
>> diff --git a/arch/arm/mach-imx/include/mach/iomux-v3.h b/arch/arm/mach-imx/include/mach/iomux-v3.h
>> index 3bf457f..470f774 100644
>> --- a/arch/arm/mach-imx/include/mach/iomux-v3.h
>> +++ b/arch/arm/mach-imx/include/mach/iomux-v3.h
>> @@ -78,6 +78,22 @@ typedef u64 iomux_v3_cfg_t;
>>               ((iomux_v3_cfg_t)(_sel_input_ofs) << MUX_SEL_INPUT_OFS_SHIFT) | \
>>               ((iomux_v3_cfg_t)(_sel_input) << MUX_SEL_INPUT_SHIFT))
>>
>> +
>> +struct iomux_v3_pad_configuration {
>> +     u64 mux_ctrl_ofs  : 12;
>> +     u64 pad_ctrl_ofs  : 12;
>> +     u64 sel_input_ofs : 12;
>> +     u64 mux_mode      : 5;
>> +     u64 pad_ctrl      : 18;
>> +     u64 sel_inp       : 4;
>> +     u64 reserved      : 1;
>> +} __packed;
>> +
>> +union iomux_v3_pad {
>> +     iomux_v3_cfg_t raw;
>> +     struct iomux_v3_pad_configuration cfg;
>> +};
>
> No, please. The order of bitfields is implementation defined. We
> shouldn't use this in barebox. Use plain masking/shifting, the defines
> are almost there.

OK, will change in v3

Thanks,
Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
