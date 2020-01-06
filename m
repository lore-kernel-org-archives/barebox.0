Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioTaW-0008N5-4i
 for barebox@lists.infradead.org; Mon, 06 Jan 2020 14:42:38 +0000
References: <1576673837-71180-1-git-send-email-m.otto@phytec.de>
 <20191220152441.thp3kn2wfnw76xgl@pengutronix.de>
 <87imm8huub.fsf@grinn-global.com>
 <20200106093503.v4kftjlk3p5u6ut2@pengutronix.de>
From: Maik Otto <m.otto@phytec.de>
Message-ID: <c8c059ea-119b-fe94-da3f-9dba736a3534@phytec.de>
Date: Mon, 6 Jan 2020 15:42:32 +0100
MIME-Version: 1.0
In-Reply-To: <20200106093503.v4kftjlk3p5u6ut2@pengutronix.de>
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
Subject: Re: [PATCH v2] habv4: imx change signing area from full to the
 executed image
To: Sascha Hauer <s.hauer@pengutronix.de>, =?UTF-8?Q?Marcin_Niestr=c3=b3j?= <m.niestroj@grinn-global.com>
Cc: barebox@lists.infradead.org

Hi Sascha and Marcin,

yes i will be change the patch.

Maik

.

Am 06.01.2020 um 10:35 schrieb Sascha Hauer:
> On Sun, Dec 22, 2019 at 11:13:48PM +0100, Marcin Niestr=F3j wrote:
>> Hi Sasha, Maik,
>>
>> Sascha Hauer <s.hauer@pengutronix.de> writes:
>>
>>> On Wed, Dec 18, 2019 at 01:57:17PM +0100, Maik Otto wrote:
>>>> the whole barebox with mbr and partition table were be signed by defau=
lt.
>>>> change the signing to the executed image without signing the mbr,
>>>> partition table and header_gap by imx8mq
>>>> additional delete option full, from-dcdofs and skip-mbr
>>>>
>>>> Signed-off-by: Maik Otto <m.otto@phytec.de>
>>>> ---
>>>> Changes in v2:
>>>>     - change subject from habv4: add the possibility to changing the s=
igning
>>>>       area from Kconfig to
>>>>     - delete KConfig entries
>>>>     - delete changes habv4-imx6-gencsf.h
>>>>     - delete full, from-dcdofs and skip-mbr options
>>>> ---
>>>>  scripts/imx/imx.c | 33 +++++++++------------------------
>>>>  1 file changed, 9 insertions(+), 24 deletions(-)
>>> Applied, thanks.
>>>
>>> @Marcin, as you introduced the "from-dcdofs" and "full" options, are you
>>> happy with this patch? It removes the options, but should default to
>>> what you originally wanted to archieve, right?
>> I think that when adding separate skip-mbr and from-dcdofs I wanted to
>> protect (with skip-mbr) first bytes of generated image, which contain
>> barebox header (with its version?) from what I remember. I never used
>> that information from there, so I am quite okay with dropping skip-mbr
>> support in favor of only from-dcdofs.
> The version is not contained in the header.
>
>> However I wonder why offset_load_address is hardcoded to
>> 0x400. Shouldn't we leave from-dcdofs as is and simply dropping all
>> other options (full and skip-mbr)?
> Yes, this sounds better. Maik, can you change the patch accordingly?
>
> Sascha
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
