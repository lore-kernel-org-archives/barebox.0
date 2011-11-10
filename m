Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 82-148-208-25.fiber.unet.nl ([82.148.208.25]
 helo=berilia.team-embedded.nl)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ROdRc-00034k-IR
 for barebox@lists.infradead.org; Thu, 10 Nov 2011 22:50:05 +0000
Received: from [192.168.0.21]
 by berilia.team-embedded.nl with esmtp (Exim 4.69)
 (envelope-from <mark.vels@team-embedded.nl>) id 1ROdCU-0005bB-A3
 for barebox@lists.infradead.org; Thu, 10 Nov 2011 23:34:26 +0100
Message-ID: <4EBC5173.4080409@team-embedded.nl>
Date: Thu, 10 Nov 2011 23:34:27 +0100
From: Mark Vels <mark.vels@team-embedded.nl>
MIME-Version: 1.0
References: <1320327965-23067-1-git-send-email-mark.vels@team-embedded.nl>
In-Reply-To: <1320327965-23067-1-git-send-email-mark.vels@team-embedded.nl>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] arm:imx27: add basic support for KaRo TX27 module on
 StarterKit 5
To: barebox@lists.infradead.org

On 11/03/2011 02:46 PM, Mark Vels wrote:
> This patch adds basic support for the TX27 CPU module.
> It has been tested so far using OpenOCD to write it into memory and execute.
> Environment loading and saving from NAND seems to work correctly, further
> testing will be focused on booting from NAND.
>
> Since I don't have any datasheets of the IIM in the i.MX27 I would appreciate
> some help with getting the serial number and the ethernet MAC from there. Can
> anyone shine some light here?
>
> Signed-off-by: Mark Vels<mark.vels@team-embedded.nl>
> ---
Anyone? No comments?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
