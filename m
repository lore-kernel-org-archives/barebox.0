Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail.e-mind.com ([188.94.192.42])
 by bombadil.infradead.org with smtp (Exim 4.87 #1 (Red Hat Linux))
 id 1e0QRR-0003Mo-PE
 for barebox@lists.infradead.org; Fri, 06 Oct 2017 11:05:20 +0000
References: <6f652c2e-d971-052d-8e96-3ae7ad984500@solidxs.nl>
 <20171006041153.xgrjynzwido3mjfj@pengutronix.de>
 <4201a4ed-f5ae-2cae-e07c-1e95dbb538df@solidxs.nl>
 <4cda0e44-6ac4-8186-2453-0d55919727ef@mev.co.uk>
 <0ad15ca1-bad1-a631-89fa-53ddc4ba224e@solidxs.nl>
From: gianluca <gianlucarenzi@eurekelettronica.it>
Message-ID: <724ccd1e-493c-b6dd-e0aa-ea65828fb6bf@eurekelettronica.it>
Date: Fri, 6 Oct 2017 13:04:36 +0200
MIME-Version: 1.0
In-Reply-To: <0ad15ca1-bad1-a631-89fa-53ddc4ba224e@solidxs.nl>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Kernel device tree gets modified with bootm command when
 CONFIG_OFDEVICE is enabled
To: barebox@lists.infradead.org

On 10/06/2017 12:28 PM, Marcel Hamer wrote:
> Hello Ian,
>
>> There is a magic variable setting to leave the partition entries alone:
>>
>>   global.of_partition_binding="donttouch"
>>
>> (Other meaningful values for this variable are "new" and "legacy",
>> which controls whether the individual partitions are placed within a
>> "partitions" node ("new") or not ("legacy").)
>>
>
> Thank you for pointing that option out, I will certainly have a look at
> that.
>
> I took the partitioning as an example, because it gave me the biggest
> burden. But I guess in general I think the principle of fixing up the
> kernel device tree should be optional to my opinion.
>

IMHO you Marcel, are missing the point.

Do not changing device tree and passing it as-is to the kernel has the 
reason on systems non upgradable, non changeable during their life-time. 
i.e. routers and or smartphones.

Usually they are provided with all stuff attached and normally everyting 
is working out-of-the-box.

To my experience, we have a bunch of boards, and they are different each 
other by little stuff, such as number of uarts, gpios, screens/lcd, 
memory and storage size.

I am letting BareBox to adapt a "generic-all-inclusive" device-tree with 
the correct "device-tree" to the kernel, so it can be used without 
hassle having and managing a single device-tree in our develpement studio.

It is simpler to have a single device-tree which can be used over a 
plethora of boards based on the same root-hardware, than having a 
plethora of device-trees perfectly adapted with your plethora of devices.

Do you agree?

Regards,
Gianluca
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
