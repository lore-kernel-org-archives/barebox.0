Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QcDJ1-0006ZA-4z
	for barebox@lists.infradead.org; Thu, 30 Jun 2011 09:13:03 +0000
Received: by wyf23 with SMTP id 23so1744306wyf.36
	for <barebox@lists.infradead.org>; Thu, 30 Jun 2011 02:13:01 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20110630025251.GJ17355@game.jcrosoft.org>
References: <1309317858-11861-1-git-send-email-antonynpavlov@gmail.com>
	<20110630025251.GJ17355@game.jcrosoft.org>
Date: Thu, 30 Jun 2011 13:13:01 +0400
Message-ID: <BANLkTimiRhscxZcetODON7Ws6=xjtzbe8w@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 1/4] Add MIPS arch support to barebox
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 30 June 2011 06:52, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:
>> +void __noreturn reset_cpu(ulong addr)
>> +{
>> + =A0 =A0 mips_machine_restart();
>> +}
>> +EXPORT_SYMBOL(reset_cpu);
> no need of this manage it at machine level

I have made reset_cpu() per-machine function.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
