Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x234.google.com ([2a00:1450:400c:c05::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZkqaG-0005Gr-Mn
 for barebox@lists.infradead.org; Sat, 10 Oct 2015 09:36:57 +0000
Received: by wicgb1 with SMTP id gb1so96290264wic.1
 for <barebox@lists.infradead.org>; Sat, 10 Oct 2015 02:36:34 -0700 (PDT)
Message-ID: <5618DC1F.90800@gmail.com>
Date: Sat, 10 Oct 2015 11:36:31 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1444341979-19157-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1444341979-19157-8-git-send-email-sebastian.hesselbarth@gmail.com>
 <87a8rr864c.fsf@belgarion.home>
In-Reply-To: <87a8rr864c.fsf@belgarion.home>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 07/17] mtd: nand_mrvl_nfc: Use Auto Read Status on
 program/erase
To: Robert Jarzmik <robert.jarzmik@free.fr>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

On 10.10.2015 10:44, Robert Jarzmik wrote:
> Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com> writes:
>
>> Marvell NAND controller allows to enable an Auto Read Status feature
>> that will monitor NAND status during Erase and Program operations.
>
> Okay, I seem to remember barebox nand core code does read it after erase and
> write anyway by issuing a status read command. Could you tell me what this
> brings I don't see ?

The Auto RS feature makes the controller poll NAND status and holds
the READY bit until it is sure the NAND has finished erase/pageprog
command.

I have timeout issues without it and I am pretty sure it just hides
some timing misconfiguration on my side. _But_ at this point I think
it is better than reworking timing setup now. I will have a deeper look
at timing configuration for sure but this involves in-depth PXA vs
Armada (vs Berlin) timing register comparison.

And the reason why I didn't do any timing rework is that DT
infrastructure for passing timing information, ONFI parsing, aso
is still very vague. I really need more time to think about the
best way to deal with it.

For example, ONFI timings give you a set of timings but they do
not specify tPROG, tERASE and friends. Those have to be parsed
from some other ONFI commands. I really want to do this step
by step and it has to be in-sync with Linux mtd... something
that would stall NAND support on Armada a little while.

Bottom-line: If the Auto RS feature doesn't break PXA, I'd
appreciate if it is enabled at least until I can confirm
proper timings are being read for the device I have.

Sebastian



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
