Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx1.emlix.com ([188.40.240.192])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLtte-0008SB-LH
 for barebox@lists.infradead.org; Tue, 07 Apr 2020 19:28:32 +0000
References: <20200312083555.10793-1-s.hauer@pengutronix.de>
 <20200312083555.10793-20-s.hauer@pengutronix.de>
 <20200312223615.GA11963@emlix.com> <20200316080427.GL3335@pengutronix.de>
From: =?UTF-8?Q?Daniel_Gl=c3=b6ckner?= <dg@emlix.com>
Message-ID: <2e7c11ab-a83f-ba67-50f5-9e6b88b7595d@emlix.com>
Date: Tue, 7 Apr 2020 21:28:26 +0200
MIME-Version: 1.0
In-Reply-To: <20200316080427.GL3335@pengutronix.de>
Content-Language: de-DE
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 19/19] poller: Allow to run pollers inside of pollers
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, Edmund Henniges <eh@emlix.com>

Hello Sascha,

Am 03/16/20 um 09:04 schrieb Sascha Hauer:
> On Thu, Mar 12, 2020 at 11:36:15PM +0100, Daniel Gl=F6ckner wrote:
>> On Thu, Mar 12, 2020 at 09:35:55AM +0100, Sascha Hauer wrote:
>>> This adds a slice to each poller which is acquired before the poller is
>>> executed. This allows us to run pollers inside of other pollers.
>>
>> ok, so in the UDP fastboot case there is now a poller that receives
>> packets and a poller that executes commands and needs packets to
>> be received to send more than one message. How do I make sure that
>> the fastboot poller will never be called inside the net poller since
>> that would cause a deadlock?
[...]
> I wonder if we need some idle slice, a slice that is locked once we are
> outside of some idle loop (shell is waiting for input). In the end the
> fastboot code may only call long running commands when the idle slice is
> not locked.

RATP has a similar requirement and tries to fulfill it by calling
barebox_ratp_command_run from within readline. I would also like to be
able to run fastboot commands during console_countdown (fb_run_command
already calls console_countdown_abort).

So how about calling slice_add and the initial slice_acquire for the idle
slice within a pure_initcall and then temporarily dropping the acquired
count inside readline and console_countdown? It should also be temporarily
increased inside poller_call (after checking the poller's slice),
execute_command, and binfmt_run in case someone wants to use the readline
or timeout commands in code called from there.

Btw., what are your plans for merging this patch set?

Best regards,

  Daniel


-- =

Dipl.-Math. Daniel Gl=F6ckner, emlix GmbH, http://www.emlix.com
Fon +49 551 30664-0, Fax +49 551 30664-11,
Gothaer Platz 3, 37083 G=F6ttingen, Germany
Sitz der Gesellschaft: G=F6ttingen, Amtsgericht G=F6ttingen HR B 3160
Gesch=E4ftsf=FChrung: Heike Jordan, Dr. Uwe Kracke
Ust-IdNr.: DE 205 198 055

emlix - your embedded linux partner

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
