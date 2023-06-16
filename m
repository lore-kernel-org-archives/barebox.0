Delivery-date: Fri, 16 Jun 2023 12:37:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qA6pW-008w2D-Gk
	for lore@lore.pengutronix.de; Fri, 16 Jun 2023 12:37:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qA6pT-0005af-Uj
	for lore@pengutronix.de; Fri, 16 Jun 2023 12:37:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8lFQBbnlXCQxKfmhulZCvrZfCXtxZrLiuMpMwSZwh6U=; b=ow4h6RqmDy/KHIRtG51tp3Q6xu
	wuiQGAdyrQzyyLj5XqQrKJuGA0sURrBlA4PHozHa33HIiP99HFTgXbMT5JZWkOP5jwFjq1BBUH9hA
	F3h4akM1ROKJhgW5V0VUgGZ2XoI6jaudtNF03slveMBTUHZgGzuvzXo0qYMEpz+1U0vMYea+aTS71
	ojO2HLjBA32n/dPdc/qfhnvGsLb83DBuZ8CsXYOX4UP9ECbGqF8I+kdq4T6SOZtvxeVqdDEbUqNZ7
	J+6eOZxTRLeuEtM5UP9gMglQ1cDmMOVnVG9Bqi6MZQkxd+bq7SJ1VtFbqwKVKeaXWNiZVJpiWLDmm
	XnSjGx+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qA6oS-0005US-1P;
	Fri, 16 Jun 2023 10:36:16 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qA6oP-0005Tc-0t
	for barebox@lists.infradead.org;
	Fri, 16 Jun 2023 10:36:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qA6oN-0005UF-QX; Fri, 16 Jun 2023 12:36:11 +0200
Message-ID: <0bc5130e-e27d-122f-253b-a0c95805258e@pengutronix.de>
Date: Fri, 16 Jun 2023 12:36:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>, Ian Abbott <abbotti@mev.co.uk>
Cc: barebox@lists.infradead.org
References: <20230615135526.30878-1-abbotti@mev.co.uk>
 <20230615155738.39998-1-abbotti@mev.co.uk>
 <20230616064158.GH18491@pengutronix.de>
 <6fea1e1e-9995-8319-90e5-397781f26893@mev.co.uk>
 <20230616103054.GI18491@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230616103054.GI18491@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_033613_318173_3B727DC6 
X-CRM114-Status: GOOD (  21.10  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] scripts: socfpga_import_preloader: Translate DOS line
 endings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 16.06.23 12:30, Sascha Hauer wrote:
> On Fri, Jun 16, 2023 at 10:19:38AM +0100, Ian Abbott wrote:
>> On 16/06/2023 07:41, Sascha Hauer wrote:
>>> Hi Ian,
>>>
>>> On Thu, Jun 15, 2023 at 04:57:38PM +0100, Ian Abbott wrote:
>>>> If the handoff files were generated on a Windows system, they will have
>>>> DOS line endings.  The `indent` program (with the options used by the
>>>> script) does a lousy job tidying up those files, leaving ASCII CR
>>>> characters embedded in the lines.  This is particularly bad for array
>>>> initializers that have one value per line, because they all end up on a
>>>> single line with embedded ASCII CR characters between each value.
>>>>
>>>> Add an initial `sed` command to `copy_source()` to match and remove an
>>>> ASCII CR character from the end of each input line.
>>>>
>>>> Also output a message before running `unifdef` and fix the spelling of
>>>> "paths" in one of the other messages.
>>>>
>>>> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
>>>> ---
>>>> v2: Corrected tabs in echoed output.
>>>> ---
>>>>   scripts/socfpga_import_preloader | 6 +++++-
>>>>   1 file changed, 5 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/scripts/socfpga_import_preloader b/scripts/socfpga_import_preloader
>>>> index bd54e1b913..26a8556b1a 100755
>>>> --- a/scripts/socfpga_import_preloader
>>>> +++ b/scripts/socfpga_import_preloader
>>>> @@ -79,6 +79,10 @@ copy_source() {
>>>>   	cp $src $tgt
>>>> +	echo "	Translating DOS line endings..."
>>>> +	sed -i "s/`echo -e '\r'`$//" $tgt
>>>
>>> Why `echo -e '\r'` here? A plain \r should work as well.
>>
>> A plain \r doesn't work, but \\\r works. I prefer '\r'.
> 
> Strange, would be interesting to know where the difference is.
> Here both of these commands have behave the same:
> 
> echo hallo | unix2dos | sed "s/`echo -e '\r'`$//" | hexdump -C
> echo hallo | unix2dos | sed "s/\r$//" | hexdump -C

Speaking of unix2dos, socfpga_get_sequencer and socfpga_xml_to_config.sh
already use dos2unix. Why can't we do likewise here and avoid any
dash/bash/sed/gsed incompatibilities that might be there?

> 
> They both result in:
> 
> 00000000  68 61 6c 6c 6f 0a                                 |hallo.|
> 00000006
> 
> Sascha
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



