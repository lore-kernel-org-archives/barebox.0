Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k2VLA-0004Ae-LB
 for barebox@lists.infradead.org; Mon, 03 Aug 2020 07:57:01 +0000
Received: by mail-qt1-x82d.google.com with SMTP id o22so27347479qtt.13
 for <barebox@lists.infradead.org>; Mon, 03 Aug 2020 00:56:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAKd8=GuMSvfaXiTvx4MSOnkLNvTuZg--deRufN6wDaPr8OxA1g@mail.gmail.com>
 <52e432ea-2ecb-2464-9126-379900da2433@pengutronix.de>
 <CAKd8=GvjdkC=mHYq3LpLwtaSi8WhYsn3e1VphTWefbzpq=_ZFA@mail.gmail.com>
 <ce3df13a-29aa-809f-f39c-1213da23038e@pengutronix.de>
 <CAKd8=GsqcUz23Rc81ZFJ5R1TzofXcJd+HGGE0u=UZyRsvZh_-Q@mail.gmail.com>
 <61831111-a404-b312-8fbe-06b1b80eaf03@pengutronix.de>
In-Reply-To: <61831111-a404-b312-8fbe-06b1b80eaf03@pengutronix.de>
From: Lars Pedersen <lapeddk@gmail.com>
Date: Mon, 3 Aug 2020 09:56:46 +0200
Message-ID: <CAKd8=Gs2qryoo4Vd79aytUTWquAeQX2R3neEEUW3n44xTJt8gw@mail.gmail.com>
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
Subject: Re: Getting serial console output on new imx7d tqma7 board UART4
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Thanks for the feedback.

I will order an i.MX7 EVK board and try to get it working. I guess
that we were a little too confident that the TQma7d board would work
out of the box with only minor tweaks.

/Lars Pedersen

On Thu, 30 Jul 2020 at 15:55, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hi,
>
> On 7/30/20 12:16 PM, Lars Pedersen wrote:
> > Thanks for the quick response :) I have made some inline comments
> >
> > Additionally I have fixed the __dtb_z_ unrelated issue, but still
> > troubles to get some output. Could you maybe send me a barebox binary
> > for an mx6 or mx7 board? I'm still unsure if it has the correct binary
> > format.
>
> Can you not compile a i.MX7-EVK barebox and run it on the EVK?
> If this doesn't work, this is a different issue.
>
>
> > My current Kconfig values look like this. Maybe you can see something
> > missing.I have patched drivers/regulator/Kconfig (ARCH_IMX7) so that I
> > can enable REGULATOR_PFUZE, which is used on the tqma7d board. From
> > what I can see the NXP i.MX7 SabreSD board uses a PF3000 PMIC too so
> > iam unsure why it can work without this fix.
>
> DEBUG_LL lets barebox print a > symbol first thing it boots. This should
> work for you regardless of any PMIC configuration.
>
> >>> So I guess that the DCD table part now should be correct. So the
> >>> question is if this is and lowlevel.c/board.c boilerplate issue or
> >>> maybe I need something in the Kconfig menu.
> >>
> >> Enable CONFIG_DEBUG_LL and see how far barebox comes.
> >> See the inline comment from my last mail.
> >
> > I missed some of the last comments but I have already enabled
> > CONFIG_DEBUG_LL and can't get any console output to appear. UART4 has
> > been selected in the menu for this.
>
> Then that's what you need to focus on. Prior to that '>', not much
> code has run. If you don't come that far, chances are you set up your serial port
> wrong (looks correct to me though) or your DCD table is wrong...
>
> Cheers,
> Ahmad
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
