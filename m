Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x235.google.com ([2607:f8b0:4001:c06::235])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMwuU-000483-5f
 for barebox@lists.infradead.org; Sun, 27 May 2018 14:44:39 +0000
Received: by mail-io0-x235.google.com with SMTP id e15-v6so3068678iog.1
 for <barebox@lists.infradead.org>; Sun, 27 May 2018 07:44:27 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CACvFaDcXB3kAcKGkX_rR7iPUr4qscogz6nwzPs9cNPkiAHODaQ@mail.gmail.com>
References: <CACvFaDcXB3kAcKGkX_rR7iPUr4qscogz6nwzPs9cNPkiAHODaQ@mail.gmail.com>
From: Pascal Vizeli <pascal.vizeli@syshack.ch>
Date: Sun, 27 May 2018 16:44:26 +0200
Message-ID: <CACvFaDchGoj77fZrfVhqp1jeUphZjn_HhoXUhfxRWXLCPUt6zg@mail.gmail.com>
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
Subject: Re: Device Tree Overlay Support v2
To: Pascal Vizeli <pvizeli@syshack.ch>
Cc: barebox@lists.infradead.org

There was some missing files inside patches. I fix that.
Actual version work on my local site with fresh environment.

2018-05-27 11:39 GMT+02:00 Pascal Vizeli <pvizeli@syshack.ch>:
> Hi,
>
> I rebase and update the patch from Jan Luebbe. They did a amazing job with:
> http://lists.infradead.org/pipermail/barebox/2015-March/022674.html
>
> I think it is now at the time to support overlay like uboot and other
> bootloaders. They will help on raspberry, I think also on other
> platforms, to update the device tree without a big shell script of
> of_properties/of_fixup_status.
>
> This features is very common today and missed by barebox.
> I update the dtc scripts to the same version they we use on dts kernel level.
>
> Patch are here:
> https://github.com/home-assistant/hassos/tree/dev/buildroot-external/patches/barebox
>
> Greets

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
