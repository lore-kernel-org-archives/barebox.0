Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oa0-x22c.google.com ([2607:f8b0:4003:c02::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XAgto-0001sD-Ft
 for barebox@lists.infradead.org; Fri, 25 Jul 2014 14:55:09 +0000
Received: by mail-oa0-f44.google.com with SMTP id eb12so5677003oac.3
 for <barebox@lists.infradead.org>; Fri, 25 Jul 2014 07:54:44 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1406279230.4643.11.camel@weser.hi.pengutronix.de>
References: <1406107568-8440-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1406107568-8440-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <1406279230.4643.11.camel@weser.hi.pengutronix.de>
Date: Fri, 25 Jul 2014 16:54:44 +0200
Message-ID: <CABJ1b_T3hrvEuDZbSUoFPL5957YemopQwWOHDxEtppeUV54K7g@mail.gmail.com>
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
Subject: Re: [PATCH RESEND 3/6] pci: add host controller struct to sysdata
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox <barebox@lists.infradead.org>

On Fri, Jul 25, 2014 at 11:07 AM, Lucas Stach <l.stach@pengutronix.de> wrote:
> Am Mittwoch, den 23.07.2014, 11:26 +0200 schrieb Sebastian Hesselbarth:
>> struct pci_bus allows to set some private sysdata. Assign the host
>> controller struct to it by default.
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
>>  drivers/pci/pci.c | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
>> index e5cd8a33b2be..b30cdd96f8ca 100644
>> --- a/drivers/pci/pci.c
>> +++ b/drivers/pci/pci.c
>> @@ -39,6 +39,7 @@ void register_pci_controller(struct pci_controller *hose)
>>       bus->ops = hose->pci_ops;
>>       bus->resource[0] = hose->mem_resource;
>>       bus->resource[1] = hose->io_resource;
>> +     bus->sysdata = hose;
>>
> This doesn't seem right. You are not only assigning hose to sysdata by
> default, but make it the only option as there is no sane way to override
> this assignment before bus scanning happens.

Yeah, the is some things with pci core already, that make it seem not right,
e.g. IIRC it is pci_register_driver which makes it impossible to use the
register_driver_macro() as it expects <bus>_driver_register.

My concern still stands, that it may be more useful to split above up in
_alloc and _register phase.

> Either make this a parameter to this function, so pci host controller
> drivers can pass in whatever they want as the sysdata, or add an
> explicit backlink pointer from bus to controller. Hm, maybe even both.

I guess it will be best to have both, i.e. bus->host = hose and an extra
parameter to pass sysdata. Or we could also drop sysdata now until
anyone requires it.

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
