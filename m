Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieagT-0001go-Mk
 for barebox@lists.infradead.org; Tue, 10 Dec 2019 08:15:55 +0000
References: <1575894703-316604-1-git-send-email-s.riedmueller@phytec.de>
 <1575894703-316604-5-git-send-email-s.riedmueller@phytec.de>
 <20191209153740.w7klpla2pi6xlnnq@pengutronix.de>
 <0edc4e68-8fd6-8e6d-450a-41db3ae975be@phytec.de>
 <20191210080554.gzar2hlvhbzjtewt@pengutronix.de>
From: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <b3a97721-c6a9-0458-5c55-f7feab869451@phytec.de>
Date: Tue, 10 Dec 2019 09:15:52 +0100
MIME-Version: 1.0
In-Reply-To: <20191210080554.gzar2hlvhbzjtewt@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 5/8] ARM: dts: imx6: phycard: Use partname for
 environment device-path
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On 10.12.19 09:05, Sascha Hauer wrote:
> On Tue, Dec 10, 2019 at 08:50:41AM +0100, Stefan Riedm=FCller wrote:
>> Hi Sascha,
>>
>> On 09.12.19 16:37, Sascha Hauer wrote:
>>> On Mon, Dec 09, 2019 at 01:31:40PM +0100, Stefan Riedmueller wrote:
>>>> Change environment device-path from using a separate label to
>>>> referencing a device plus partname.
>>>
>>> Why? The way it was is fine.
>>
>> Just to be consistent with phyCORE and phyFLEX. Is there a downside I'm =
not
>> aware of?
> =

> It feels more natural to directly point to the partition, that's why I
> prefer that way. So if you don't have a good reason I suggest to convert
> it the other way round for consistency

I will recheck if there was a specific reason for us to use the partname =

approach. But you can drop this patch for now.

Thanks
Stefan

> =

> Sascha
> =


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
