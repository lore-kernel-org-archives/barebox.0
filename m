Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z0lGg-0005rC-5n
 for barebox@lists.infradead.org; Fri, 05 Jun 2015 06:38:15 +0000
Message-ID: <557143BA.2030001@phytec.de>
Date: Fri, 05 Jun 2015 08:37:46 +0200
From: Wadim Egorov <w.egorov@phytec.de>
MIME-Version: 1.0
References: <1433232067-31563-1-git-send-email-w.egorov@phytec.de>
 <20150604090600.GA6325@pengutronix.de>
In-Reply-To: <20150604090600.GA6325@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] image: am335x: Generate SPI MLO images
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,

please drop this patch. I don't think this is the right way
to add new image types for the AM335x.

Regards,

Wadim

On 04.06.2015 11:06, Sascha Hauer wrote:
> On Tue, Jun 02, 2015 at 10:01:07AM +0200, Wadim Egorov wrote:
>> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
>> ---
>>   images/Makefile        | 2 +-
>>   images/Makefile.am33xx | 6 ++++++
>>   2 files changed, 7 insertions(+), 1 deletion(-)
>>
>> diff --git a/images/Makefile b/images/Makefile
>> index 587cb26..36c1a57 100644
>> --- a/images/Makefile
>> +++ b/images/Makefile
> Applied, thanks
>
> Sascha
>
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
