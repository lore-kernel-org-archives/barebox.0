Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yx0-f177.google.com ([209.85.213.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SN3pE-0007AD-AS
 for barebox@lists.infradead.org; Wed, 25 Apr 2012 15:08:12 +0000
Received: by yenm10 with SMTP id m10so204302yen.36
 for <barebox@lists.infradead.org>; Wed, 25 Apr 2012 08:08:10 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120406025913.GD16306@game.jcrosoft.org>
References: <CAD9ZU8BR35iyRxH1-eEioCdo_mcXeVS+GjiSCiahPSUvcDXgXw@mail.gmail.com>
 <20120405063322.GV3852@pengutronix.de>
 <CAD9ZU8ACc_p2bTq-QtwhHXWz6NP=J-VkKS=0O2vdHkO2oRQUDw@mail.gmail.com>
 <20120405065455.GW3852@pengutronix.de>
 <CAD9ZU8Ce_s5pq8Y6wm5dXo_rv-fg2pYx1O+T9bh+7Kq088ySFA@mail.gmail.com>
 <20120405092738.GB3852@pengutronix.de>
 <20120406025913.GD16306@game.jcrosoft.org>
Date: Wed, 25 Apr 2012 17:08:10 +0200
Message-ID: <CAD9ZU8CEquXoeb5c8cNxsGN9EiSAX8GqX_Uc4eyeZ7=w5Dg2BA@mail.gmail.com>
From: Gabriel Tisan <gabriel.tisan@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: debugging on board
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Apr 6, 2012 at 4:59 AM, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
> On 11:27 Thu 05 Apr =A0 =A0 , Sascha Hauer wrote:
>> On Thu, Apr 05, 2012 at 09:06:30AM +0200, Gabriel Tisan wrote:
>> > I use external boot mode from NAND. I choosed
>> > CONFIG_NAND_IMX_BOOT_512_2K although I have a flash with 2k page size.
>>
>> Try 'make barebox.S' and have a look at the resulting barebox.S file.
>> Everything including
>>
>> reset
>> __mmu_cache_flush
>> imx_nand_load_image
>>
>> must fit into the first 2k of memory. We currently do not catch this
>> (though we could using a seperate linker section for this). If your
>> lowlevel init code is too big then you can easily exceed this
>> limitation.
> we can now I add an option for this
>
Which commit include this option ?

Actually which is the last stable barebox ? I've got the version from
master with last commit 96a43ca "pxa27x_udc: Fix compilation warning"
from 23 Mar 2012.

Regards,
Gabriel

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
