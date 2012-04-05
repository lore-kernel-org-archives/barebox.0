Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFloC-0003XB-2x
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 12:29:00 +0000
Received: by yhjj52 with SMTP id j52so712063yhj.36
 for <barebox@lists.infradead.org>; Thu, 05 Apr 2012 05:28:58 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120405092738.GB3852@pengutronix.de>
References: <CAD9ZU8BR35iyRxH1-eEioCdo_mcXeVS+GjiSCiahPSUvcDXgXw@mail.gmail.com>
 <20120405063322.GV3852@pengutronix.de>
 <CAD9ZU8ACc_p2bTq-QtwhHXWz6NP=J-VkKS=0O2vdHkO2oRQUDw@mail.gmail.com>
 <20120405065455.GW3852@pengutronix.de>
 <CAD9ZU8Ce_s5pq8Y6wm5dXo_rv-fg2pYx1O+T9bh+7Kq088ySFA@mail.gmail.com>
 <20120405092738.GB3852@pengutronix.de>
Date: Thu, 5 Apr 2012 14:28:58 +0200
Message-ID: <CAD9ZU8BmxwrSDB18DukqshH8C1mKq+=WzxVsrw232x2hsce+Ug@mail.gmail.com>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

So, the opcodes from the start of the file barebox.S until
__mmu_cache_flush(inclusive) including
reset & imx_nand_load_image make 1372 bytes, lower than 2K.

Regards,
Gabriel

On Thu, Apr 5, 2012 at 11:27 AM, Sascha Hauer <s.hauer@pengutronix.de> wrot=
e:
> On Thu, Apr 05, 2012 at 09:06:30AM +0200, Gabriel Tisan wrote:
>> I use external boot mode from NAND. I choosed
>> CONFIG_NAND_IMX_BOOT_512_2K although I have a flash with 2k page size.
>
> Try 'make barebox.S' and have a look at the resulting barebox.S file.
> Everything including
>
> reset
> __mmu_cache_flush
> imx_nand_load_image
>
> must fit into the first 2k of memory. We currently do not catch this
> (though we could using a seperate linker section for this). If your
> lowlevel init code is too big then you can easily exceed this
> limitation.
>
> Sascha
>
> --
> Pengutronix e.K. =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 |
> Industrial Linux Solutions =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | http://www.p=
engutronix.de/ =A0|
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0 =A0=
 =A0|
> Amtsgericht Hildesheim, HRA 2686 =A0 =A0 =A0 =A0 =A0 | Fax: =A0 +49-5121-=
206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
