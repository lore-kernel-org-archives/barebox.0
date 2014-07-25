Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi0-x22d.google.com ([2607:f8b0:4003:c06::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XAgir-0005Ag-8H
 for barebox@lists.infradead.org; Fri, 25 Jul 2014 14:43:51 +0000
Received: by mail-oi0-f45.google.com with SMTP id e131so3446296oig.18
 for <barebox@lists.infradead.org>; Fri, 25 Jul 2014 07:43:27 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1406278266.4643.5.camel@weser.hi.pengutronix.de>
References: <1406107568-8440-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1406107568-8440-3-git-send-email-sebastian.hesselbarth@gmail.com>
 <1406278266.4643.5.camel@weser.hi.pengutronix.de>
Date: Fri, 25 Jul 2014 16:43:27 +0200
Message-ID: <CABJ1b_RN48sP04xF5BZJKxCFowCt6TNXx_tZLecV88Ehna-UbA@mail.gmail.com>
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH RESEND 2/6] pci: pci_scan_bus: respect 64b BARs
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox <barebox@lists.infradead.org>

On Fri, Jul 25, 2014 at 10:51 AM, Lucas Stach <l.stach@pengutronix.de> wrote:
> Am Mittwoch, den 23.07.2014, 11:26 +0200 schrieb Sebastian Hesselbarth:
>> In PCI 64-bit BARs span two 32-bit BARs, therefore if BAR type
>> indicates a 64-bit BAR we have to skip the next BAR register.
>> Note that this does not add proper support for 64-bit BARs and
>> 64-bit addresses but still picks the lower 32-bit address.
>>
>> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
>> ---
>> To: barebox@lists.infradead.org
>> To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
>> Cc: Antony Pavlov <antonynpavlov@gmail.com>
>> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
>> Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
>> Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
>> ---
>>  drivers/pci/pci.c | 8 +++++++-
>>  1 file changed, 7 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
>> index 3d88b0ff5fd0..e5cd8a33b2be 100644
>> --- a/drivers/pci/pci.c
>> +++ b/drivers/pci/pci.c
>> @@ -196,6 +196,7 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
>>
>>               for (bar = 0; bar < 6; bar++) {
>>                       resource_size_t last_addr;
>> +                     bool found_bar64 = false;
>
> I don't think we need this variable...
>
>>
>>                       pci_read_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, &old_bar);
>>                       pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, 0xfffffffe);
>> @@ -213,17 +214,22 @@ unsigned int pci_scan_bus(struct pci_bus *bus)
>>                               pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_io);
>>                               last_addr = last_io;
>>                               last_io += size;
>> -
>>                       } else { /* MEM */
>>                               size = -(mask & 0xfffffff0);
>>                               DBG("  PCI: pbar%d: mask=%08x memory %d bytes\n", bar, mask, size);
>>                               pci_write_config_dword(dev, PCI_BASE_ADDRESS_0 + bar * 4, last_mem);
>>                               last_addr = last_mem;
>>                               last_mem += size;
>> +
>> +                             if ((mask & PCI_BASE_ADDRESS_MEM_TYPE_MASK) ==
>> +                                 PCI_BASE_ADDRESS_MEM_TYPE_64)
>> +                                     found_bar64 = true;
>
> ... if we set the dev->resource.flags to IORESOURCE_MEM_64 (bonus points
> for setting the flags in other cases properly also) here...
>
>>                       }
>>
>>                       dev->resource[bar].start = last_addr;
>>                       dev->resource[bar].end = last_addr + size - 1;
>> +                     if (found_bar64)
>> +                             bar++;
>
> ... and check for this flag here.

Yup, sounds like a good plan. I'll consider this when I come back to it.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
