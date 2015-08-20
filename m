Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZSOqN-0000aW-Tp
 for barebox@lists.infradead.org; Thu, 20 Aug 2015 12:21:21 +0000
Received: by lagz9 with SMTP id z9so21287780lag.3
 for <barebox@lists.infradead.org>; Thu, 20 Aug 2015 05:20:57 -0700 (PDT)
Message-ID: <55D5C626.6020103@gmail.com>
Date: Thu, 20 Aug 2015 15:20:54 +0300
From: Igor Plyatov <plyatov@gmail.com>
MIME-Version: 1.0
References: <55D442E9.6030306@gmail.com>
 <20150819140443.GZ18700@pengutronix.de>
In-Reply-To: <20150819140443.GZ18700@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Reply-To: plyatov@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: delay in the IMXCFG file
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Dear Sascha,

> Hi Igor,
>
> On Wed, Aug 19, 2015 at 11:48:41AM +0300, Igor Plyatov wrote:
>> Dear all,
>>
>> for debugging purposes I need to add some delays into the <BOARD
>> NAME>.imxcfg file, but does not know which format it is. It looks
>> like some kind of C, but it is confusing.
>>
>> Where is defined "wm 32", "soc", "dcdofs", "loadaddr" command and others?
> They are interpreted in the imx-image tool, see scripts/imx/README and
> scripts/imx/imx-image.c. The imx-image tool converts the commands into a
> dcd table which is understood by the Freescale i.MX ROM Code. The ROM
> code does not provide a delay command, so what you are looking for does
> not exist. All the is is a nop command. This is currently not
> implemented in imx-image, you would have to add it.
>
>> Which commands I can use in the IMXCFG file to create very early
>> delay, before initialization of DRAM?
> As said, there is nop. Otherwise there is a 'check' command to poll for
> setting/clearing bits.
> See the i.MX reference manual in the "Device Configuration Data (DCD)"
> section for further information.

Thank you for explanation above!

Everywhere I see references to DCD in the Reference Manual, but I can 
not find details about DCD in the MCIMX51RM.pdf Rev. 1 2/2010.

If you know, please give me a link to document where DCD explained in 
details, because any attempt to setup GPIO output, fails. Device just 
does not boot at all.

wm 32 0x73f88000 0x689c0319 /* hangup line in flash-header.imxcfg */

Best wishes.
--
Igor Plyatov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
