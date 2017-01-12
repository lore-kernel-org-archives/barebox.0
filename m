Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay0107.hostedemail.com ([216.40.44.107]
 helo=smtprelay.hostedemail.com)
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cRccB-00009i-A5
 for barebox@lists.infradead.org; Thu, 12 Jan 2017 10:28:17 +0000
References: <CAAMcf8CA-eTzHhQFXct7-udO1sYifL3zGULsoxiW9U1hcvKMvw@mail.gmail.com>
 <20170111200757.x33vfb4sdrsu4kmk@pengutronix.de>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <d8c10ecb-f349-eae5-2fe9-ccf407e1d31c@mev.co.uk>
Date: Thu, 12 Jan 2017 10:27:48 +0000
MIME-Version: 1.0
In-Reply-To: <20170111200757.x33vfb4sdrsu4kmk@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: scripts/checkpatch.pl is deprecated
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>, Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On 11/01/17 20:07, Uwe Kleine-K=F6nig wrote:
> On Wed, Jan 11, 2017 at 08:35:11PM +0100, Vicente Bergas wrote:
>> Hello,
>> when using scripts/checkpatch.pl it may report:
>>   Unescaped left brace in regex is deprecated,
>>   passed through in regex at scripts/checkpatch.pl line 2267.
>
> I bet this scripts originates from the kernel. So I'd recommend to test
> if their version is affected to. If yes, report to them, if not, update
> barebox to latest Linux version.

In the Linux kernel, this was fixed in commit =

6b8c69e4384b0bcf1936c2137804840212daaf69 ("checkpatch: fix another left =

brace warning"), which made it into the the 4.6 kernel.

-- =

-=3D( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=3D-
-=3D(                          Web: http://www.mev.co.uk/  )=3D-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
