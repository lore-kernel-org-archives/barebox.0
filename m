Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([208.187.125.9])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cWUY3-0006qY-4i
 for barebox@lists.infradead.org; Wed, 25 Jan 2017 20:52:12 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Wed, 25 Jan 2017 20:51:43 +0000
Message-ID: <1485377572.20042.51.camel@kymetacorp.com>
References: <CA+-urNQJbuE44V93+BERHf9r5kEKzn5mBJ5e=t9932TtR7+0Yw@mail.gmail.com>
In-Reply-To: <CA+-urNQJbuE44V93+BERHf9r5kEKzn5mBJ5e=t9932TtR7+0Yw@mail.gmail.com>
Content-Language: en-US
Content-ID: <D06DD99902F752408F96D0900C183AEC@kymetacorp.com>
MIME-Version: 1.0
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
Subject: Re: Accessing non-volatile variables from Linux
To: "fhunleth@troodon-software.com" <fhunleth@troodon-software.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, 2017-01-25 at 14:21 -0500, Frank Hunleth wrote:
> I'm wondering if it's possible to read and modify Barebox environment
> variables from Linux in a way similar to U-Boot's fw_printenv and
> fw_setenv. If that's not possible, is there another way for communicating
> between Linux and Barebox? Apologies if I totally missed a section in the
> docs that describes this.

This might not be useful for what you want, but it could be.  Many SoCs
have "handoff" registers that don't have any predefined use and are
preserved across a soft reset.

You can write to the register(s) from Linux, then reboot to Barebox and
see the value, which could then trigger some action in Barebox.

Of course the registers are not preserved across a hard reset, which
might be a plus or minus depending on what you want to do.

This allows you to pass info to barebox without having to worry about
what happens if the env is corrupted while being modified.  The barebox
env format is NOT a log based FS designed to prevent this!
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
