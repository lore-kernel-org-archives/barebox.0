Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.bemta5.messagelabs.com ([195.245.231.153])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZC5No-0000OB-Ca
 for barebox@lists.infradead.org; Mon, 06 Jul 2015 12:20:25 +0000
Message-ID: <559A7264.1020205@celad.com>
Date: Mon, 6 Jul 2015 14:19:48 +0200
From: Herve Codina <herve.CODINA@celad.com>
MIME-Version: 1.0
References: <1436168207-6433-1-git-send-email-Herve.CODINA@celad.com>
 <20150706115236.GR18700@pengutronix.de>
In-Reply-To: <20150706115236.GR18700@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/4] exitcall infrastructure
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>



Le 06/07/2015 13:52, Sascha Hauer a =E9crit :
> On Mon, Jul 06, 2015 at 09:36:42AM +0200, Herve Codina wrote:
>> This series adds shutdown hooks mechanism.
>> The mechanism chosen is based on initcall infrastructure and so the name
>> given is exitcall.
>> The first patch implement the exitcall infrastructure.
>> The other patches move old shutdown functions to this new infrastructure.
>>
>> Herve Codina (4):
>>   exitcall: Add exitcall infrastructure
>>   exitcall: move device_shutdown to exitcall infrastructure
>>   exitcall: move arch_shutdown to exitcall infrastructure
>>   exitcall: move board_shutdown to exitcall infrastructure
> =

> Applied, thanks. Please watch out for trailing whitespaces next time. I
> removed several while applying.
Oups, i am sorry for this additional work.
I will be more carefull about whitespaces.

Thanks,
Herve
> =

> Sascha
> =


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
