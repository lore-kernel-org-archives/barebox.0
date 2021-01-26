Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from cpanel.siel.si ([46.19.9.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l4NIc-0005Km-Ho
 for barebox@lists.infradead.org; Tue, 26 Jan 2021 12:18:23 +0000
References: <20210120125107.736121-1-andrej.picej@norik.com>
 <20210120125107.736121-3-andrej.picej@norik.com>
 <20210121090148.GF19063@pengutronix.de>
 <7df4659e-7237-c5fa-767f-7dedd5c44005@norik.com>
 <20210125091547.GB8233@pengutronix.de>
 <200bfc2a-e616-0e34-b2c4-91ef67915836@norik.com>
 <da704371-9ad7-e42d-675c-08a34afa5159@norik.com>
 <20210126120830.GE28722@pengutronix.de>
From: Andrej Picej <andrej.picej@norik.com>
Message-ID: <67f31258-a167-aea6-f5b8-1541953a1495@norik.com>
Date: Tue, 26 Jan 2021 13:18:19 +0100
MIME-Version: 1.0
In-Reply-To: <20210126120830.GE28722@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] ARM: i.MX: implement GPMI NAND xload
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org

On 26. 01. 21 13:08, Sascha Hauer wrote:
> On Tue, Jan 26, 2021 at 12:40:17PM +0100, Andrej Picej wrote:
>>
>> On 25. 01. 21 10:43, Andrej Picej wrote:
>>> On 25. 01. 21 10:15, Sascha Hauer wrote:
>>>> On Thu, Jan 21, 2021 at 11:28:39AM +0100, Andrej Picej wrote:
>>>>> Hi Sascha,
>>>>>
>>>>> thanks for your comments.
>>>>>
>>>>> Responses inline.
>>>>>
>>>>> On 21. 01. 21 10:01, Sascha Hauer wrote:
>>>>>> Hi Andrej,
>>>>>>
>>>>>> Some comments inline.
>>>>>>
>>>>>> On Wed, Jan 20, 2021 at 01:51:06PM +0100, Andrej Picej wrote:
>>>>>>> From: Sascha Hauer <s.hauer@pengutronix.de>
>>>>>>>
>>>>>>> Commit is based on initial Sascha Hauer's work. It
>>>>>>> implements PBL xload
>>>>>>> mechanism to load image from GPMI NAND flash.
>>>>>>>
>>>>>>> Additional work was done, so that the NAND's size, page size and OO=
B's
>>>>>>> size are autodetected and not hardcoded. Detection method follows t=
he
>>>>>>> same methods as used in NAND driver, meaning NAND ONFI
>>>>>>> support is probed
>>>>>>> and if NAND supports ONFI, NAND memory organization is read from ON=
FI
>>>>>>> parameter page otherwise "READ ID" is used.
>>>>>>>
>>>>>>> Currently only implemented for i.MX6 familly of SoCs.
>>>>>>>
>>>>>>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>>>>>> Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
>>>>>>> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
>>>>>>> ---
>>>>>>>  =A0=A0 arch/arm/mach-imx/Makefile=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 |=A0=A0=A0 2 +-
>>>>>>>  =A0=A0 arch/arm/mach-imx/include/mach/xload.h |=A0=A0=A0 1 +
>>>>>>>  =A0=A0 arch/arm/mach-imx/xload-gpmi-nand.c=A0=A0=A0 | 1163
>>>>>>> ++++++++++++++++++++++++
>>>>>>>  =A0=A0 3 files changed, 1165 insertions(+), 1 deletion(-)
>>>>>>>  =A0=A0 create mode 100644 arch/arm/mach-imx/xload-gpmi-nand.c
>>>>>>>
>>>>>>> diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
>>>>>>> index e45f758e9..d94c846a1 100644
>>>>>>> --- a/arch/arm/mach-imx/Makefile
>>>>>>> +++ b/arch/arm/mach-imx/Makefile
>>>>>>> +static int mxs_nand_get_info(struct mxs_nand_info
>>>>>>> *info, void *databuf)
>>>>>>> +{
>>>>>>> +=A0=A0=A0 int ret, i;
>>>>>>> +
>>>>>>> +=A0=A0=A0 ret =3D mxs_nand_check_onfi(info, databuf);
>>>>>>> +=A0=A0=A0 if (ret) {
>>>>>>> +=A0=A0=A0=A0=A0=A0=A0 if (ret !=3D 1)
>>>>>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return ret;
>>>>>>> +=A0=A0=A0=A0=A0=A0=A0 pr_warn("ONFI not supported, try \"READ ID\"=
...\n");
>>>>>>
>>>>>> You already printed a "ONFI not supported\n" message. Printing it on=
ce
>>>>>> is enough. Also this message appears with every non-ONFI
>>>>>> nand, right? In
>>>>>> that case it should rather be pr_info()
>>>>>
>>>>> OK, I agree, will fix it in v2.
>>>>>
>>>>>>
>>>>>>> +=A0=A0=A0 /*
>>>>>>> +=A0=A0=A0=A0 * If ONFI is not supported or if it fails try to
>>>>>>> get NAND's info from
>>>>>>> +=A0=A0=A0=A0 * "READ ID" command.
>>>>>>> +=A0=A0=A0=A0 */
>>>>>>> +=A0=A0=A0 pr_debug("Trying \"READ ID\" command...\n");
>>>>>>> +=A0=A0=A0 ret =3D mxs_nand_get_readid(info, databuf);
>>>>>>> +=A0=A0=A0 if (ret) {
>>>>>>> +=A0=A0=A0=A0=A0=A0=A0 if (ret !=3D -EOVERFLOW)
>>>>>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return ret;
>>>>>>> +
>>>>>>> +=A0=A0=A0=A0=A0=A0=A0 /*
>>>>>>> +=A0=A0=A0=A0=A0=A0=A0=A0 * If NAND's "READ ID" returns bad values,=
 try to set them to
>>>>>>> +=A0=A0=A0=A0=A0=A0=A0=A0 * default (most common NAND memory org.) =
and continue.
>>>>>>> +=A0=A0=A0=A0=A0=A0=A0=A0 */
>>>>>>> +=A0=A0=A0=A0=A0=A0=A0 pr_warn("NANDs READ ID command returned bad =
values" \
>>>>>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 " set them to default and try to=
 continue!\n");
>>>>>>> +=A0=A0=A0=A0=A0=A0=A0 info->organization.pagesize =3D 2048;
>>>>>>> +=A0=A0=A0=A0=A0=A0=A0 info->organization.oobsize =3D 64;
>>>>>>> +=A0=A0=A0=A0=A0=A0=A0 info->nand_size =3D SZ_1G;
>>>>>>
>>>>>> Is this worth it? READ ID is the most basic command, when this doesn=
't
>>>>>> work I don't think there's a point in continuing.
>>>>>
>>>>> We had a case with Samsung K9K8G08U0E when sometimes (reasons
>>>>> not known) the
>>>>> 5th byte returned 0xff instead of correct values, all other
>>>>> returned values
>>>>> were correct. In this case the device booted successfully
>>>>> because of this
>>>>> hook. Maybe a better solution would be to check only the 5th
>>>>> byte for 0xff
>>>>> value (5th byte is not supported from all NAND vendors), if this
>>>>> is the case
>>>>> set the NAND size to 1GB.
>>>>> Would that make more sense?
>>>>
>>>> The best would be to track the issue down and to fix it ;)
>>>> It's not very nice to assume it in case of read id failures it's exact=
ly
>>>> that NAND type you have troubles with.
>>>> Does it help to reset the NAND chip before reading the ID?
>>>>
>>>> Sascha
>>>>
>>>
>>> I totally agree with fixing the issue and will look into it a bit more.
>>> I will reset the NAND before reading the ID in the same way as it is
>>> done before reading parameter page. I will leave the testing on over
>>> night (reading the ID failed in about 1 out of 500 boots) and report the
>>> results tomorrow.
>>>
>>
>> I guess resetting fixed this problem, I got 50.000 boots without any
>> problems. Will fix this in v2 :).
>>
>> Should I now completely abandon setting the NANDs memory to default valu=
es
>> and just return error on failure?
> =

> Yes please.
> =

>> Something like this:
>>
>>> 	/*
>>> 	 * If ONFI is not supported or if it fails try to get NAND's info from
>>> 	 * "READ ID" command.
>>> 	 */
>>> 	ret =3D mxs_nand_reset(info, databuf);
>>> 	if (ret)
>>> 		return ret;
>>> 	pr_debug("Trying \"READ ID\" command...\n");
>>> 	ret =3D mxs_nand_get_readid(info, databuf);
>>> 	if (ret) {
>>> 		pr_err("xloader supports only ONFI and generic \"READ ID\" " \
>>> 			"supported NANDs\n");
>>> 		return -1;
>>> 	}
>>
>> I'm asking this because NANDs ID command is manufacturer specific, some
>> manufacturers follow generic values and other unfortunately don't. In
>> barebox NAND driver decoding is done based on manufacturer. I guess we c=
ould
>> do the same here but I don't want to expand the PBL part too much just f=
or
>> reading FCB, where all NAND's memory parameters are decoded from.
> =

> We can do that once we have to later. Decoding the ID into page/block
> sizes should also be done generically and not part of the i.MX6 NAND
> loader.  Maybe we could also utilize parts of the NAND layer instead of
> adding new code.
> =

Ok, will prepare v2 and submit it when done.
Thank you for your kind comments and guidance so far.

BR,
Andrej


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
