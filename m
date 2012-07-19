Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Srv5D-0008TA-2B
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 18:04:20 +0000
Message-ID: <50084C19.8070909@phytec.de>
Date: Thu, 19 Jul 2012 20:04:09 +0200
From: =?ISO-8859-15?Q?J=FCrgen_Kilb?= <j.kilb@phytec.de>
MIME-Version: 1.0
References: <1342616327-2765-1-git-send-email-J.Kilb@phytec.de>
 <1342616327-2765-3-git-send-email-J.Kilb@phytec.de>
 <20120719131024.GX30009@pengutronix.de>
In-Reply-To: <20120719131024.GX30009@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] pca-a-l1: added memory device for int. 60kB RAM.
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On 19.07.2012 15:10, Sascha Hauer wrote:
> Hi J=FCrgen,
>
> On Wed, Jul 18, 2012 at 02:58:46PM +0200, Juergen Kilb wrote:
>> Signed-off-by: Juergen Kilb <J.Kilb@phytec.de>
>> ---
>>   arch/arm/boards/phycard-a-l1/pca-a-l1.c         |    2 ++
>>   arch/arm/mach-omap/include/mach/omap3-silicon.h |    1 +
>>   2 files changed, 3 insertions(+), 0 deletions(-)
>>
>> diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.c b/arch/arm/boards/p=
hycard-a-l1/pca-a-l1.c
>> index 1cc2815..8fae405 100644
>> --- a/arch/arm/boards/phycard-a-l1/pca-a-l1.c
>> +++ b/arch/arm/boards/phycard-a-l1/pca-a-l1.c
>> @@ -292,6 +292,8 @@ static int pcaal1_mem_init(void)
>>   	 */
>>   	gpmc_generic_init(0x10);
>>   #endif
>> +	add_mem_device("sram0", OMAP_SRAM_BASE, 60 * SZ_1K,
>> +				   IORESOURCE_MEM_WRITEABLE);
> Isn't this 64K? Or does the ROM code store stuff in the upper 4k which
> you want to preserve?
Yes it is a 64K memory range but it is splitted into 5 regions and they are
used during the booting process.

0x4020_0000 - 0x4020_EFFF =3D> Used for storing a downloaded booting image
0x4020_F000 - 0x4020_FCAF =3D> Public Stack (reserved for stacks)
0x4020_FCB0 - 0x4020_FFC7 =3D> Tracing Data
0x4020_FFC8 - 0x4020_FFFF =3D> RAM exception Vectors

We can increase the size to 0xFCB0 but I think it's better to use only 60K.
At least the tracing vectors should be preserved.
> Sascha
>
J=FCrgen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
