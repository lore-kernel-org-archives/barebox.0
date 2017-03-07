Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x229.google.com ([2607:f8b0:400e:c00::229])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clMMq-0003h9-Hh
 for barebox@lists.infradead.org; Tue, 07 Mar 2017 21:10:02 +0000
Received: by mail-pf0-x229.google.com with SMTP id o126so5229234pfb.3
 for <barebox@lists.infradead.org>; Tue, 07 Mar 2017 13:09:37 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170307081330.gb3iz6gebpbwlt3r@pengutronix.de>
References: <20170306225356.31475-1-andrew.smirnov@gmail.com>
 <20170307081330.gb3iz6gebpbwlt3r@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 7 Mar 2017 13:09:36 -0800
Message-ID: <CAHQ1cqEz6H96032_rErSK1zCFCiZA=LAO-8gtjRriG-qnFUUFg@mail.gmail.com>
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
Subject: Re: [PATCH 00/45] AT91, at91sam9x5ek updates
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Mar 7, 2017 at 12:13 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Hi Andrey,
>
> On Mon, Mar 06, 2017 at 02:53:11PM -0800, Andrey Smirnov wrote:
>> Hi everyone,
>>
>> I recently had a chance to work with at91sam9x5ek board and as a part
>> of that effort I converted the code to support features found in
>> Barebox for i.MX based SoCs. Most notably this patchset converts
>> at91sam9x5ek to use multi-image PBL build process as well as adds
>> support for board initialization from attached devicetree blob.
>>
>> Sascha, at least for now, all of the patches, in chronological order,
>> are included in this submission. However if this proves to be too
>> burdensome to review, I'd be more than happy to split it into several
>> individual submissions. One such division could be:
>>
>>          - Generic bug fixes/infrastructure enhancements
>>          - Peripheral drivers updates
>>          - at91sam9x5ek specific changes
>>
>> Please let me know if that is preferrable.
>
> I had a short look at all patches, overall they look good. Nevertheless
> it would be good to sort them like you suggested. It just makes it
> easier to apply.
>

OK, will do.

> Thanks for working on this, a general AT91 overhaul was long overdue. I
> hope this series prepares a path to cleanup the other AT91 SoCs aswell.
>

Yeah, I have a bit more AT91 based hardware (at least SAMA5D3 Xplained
board and maybe more), so I was hoping to get those done after this
merge request.

> The clock support you ported over from the kernel is for all AT91 SoCs
> and not only one, right?

Yeah, I belive it should be usable by the whole AT91 family.

Thanks,
Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
