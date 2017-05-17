Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x231.google.com ([2607:f8b0:400e:c00::231])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dAyzw-00040g-HT
 for barebox@lists.infradead.org; Wed, 17 May 2017 13:28:18 +0000
Received: by mail-pf0-x231.google.com with SMTP id m17so7479158pfg.3
 for <barebox@lists.infradead.org>; Wed, 17 May 2017 06:27:55 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <ce9d88fb-a15a-c533-521e-62ad84d161d8@webdyn.com>
References: <ce9d88fb-a15a-c533-521e-62ad84d161d8@webdyn.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 17 May 2017 06:27:55 -0700
Message-ID: <CAHQ1cqHFfkO=184mwee2Dyi9+seD+-5rZShEcb=t5t01OV_+GA@mail.gmail.com>
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
Subject: Re: USB ohci on sama5d3
To: Georg Hofmann <georg.hofmann@webdyn.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, May 17, 2017 at 2:44 AM, Georg Hofmann <georg.hofmann@webdyn.com> wrote:
> Hello,
>
> First of all, thanks for barebox, it's really a nice tool which I am
> discovering.
>
> I am trying to get USB ohci working on a sama5D3 evk. My current state
> is that the ohci driver get compiled and is called when I use the
> command usb, the root hub shows up, but the device enumeration don't work.
>
> So my question was: is the presence of the file ohci-at91.C indicating
> that ohci should work on some at91* platforms or is it just a copy/past
> from another place. If it should work, on which platform? In the may
> release are some USB patched (e.g.: "Allow USB_OHCI_AT91 even if
> USB_OHCI is disabled"). Where these patches runtime tested?

Georg:

Yes, I did runtime test those patches, however:

- all of the patchset then went in in May release were done against
AT91SAM9G25 SoC and I haven't had a chance to convert SAMA5D3 related
code to leverage those changes.

- pure OHCI, (i.e. EHCI being disabled) never worked for me on AT91 (I
never debugged it since I didn't care about getting OHCI to work) and
the only thing that this driver was needed for was to configure VBUS
related GPIOs that are shared with EHCI. Using EHCI on SAM9G25 _did_
work and I was able to read/write data from/to a USB pen-drive.

Hope this is gives you at least some answers.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
