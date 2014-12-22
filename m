Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.orpheo.org ([176.31.189.100] helo=orpheo.org)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y2yhl-0006Oo-6p
 for barebox@lists.infradead.org; Mon, 22 Dec 2014 08:51:06 +0000
Message-ID: <5497DB5B.2020505@ophrys.net>
Date: Mon, 22 Dec 2014 09:50:35 +0100
From: Victorien Vedrine <victorien.vedrine@ophrys.net>
MIME-Version: 1.0
References: <1418832597-3932-1-git-send-email-victorien.vedrine@ophrys.net>
 <20141219185901.GG10857@pengutronix.de>
In-Reply-To: <20141219185901.GG10857@pengutronix.de>
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
Subject: Re: [PATCH] partitions: dos: Fix support of extended partition type
 0x05
To: =?windows-1252?Q?Uwe_Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,
Ok, I'll change that.

Best regards
Victorien

Le 19/12/2014 19:59, Uwe Kleine-K=F6nig a =E9crit :
> Hallo,
>
> On Wed, Dec 17, 2014 at 05:09:57PM +0100, victorien wrote:
>> ---
>>   common/partitions/dos.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/common/partitions/dos.c b/common/partitions/dos.c
>> index 37addfd..8a3c5c3 100644
>> --- a/common/partitions/dos.c
>> +++ b/common/partitions/dos.c
>> @@ -209,7 +209,7 @@ static void dos_partition(void *buf, struct block_de=
vice *blk,
>>   			 * here as this is the easiest to parse and common
>>   			 * enough.
>>   			 */
>> -			if (pentry.dos_partition_type =3D=3D 0x0f) {
>> +			if ((pentry.dos_partition_type =3D=3D 0x0f)||(pentry.dos_partition_t=
ype =3D=3D 0x05)) {
> apart from what Sascha said, also add spaces around ||. Also break lines
> at or before column 80 (with tabs accounting for 8 columns).
>
> Best regards
> Uwe
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
