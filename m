Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieaI8-0008Vz-I9
 for barebox@lists.infradead.org; Tue, 10 Dec 2019 07:50:46 +0000
References: <1575894703-316604-1-git-send-email-s.riedmueller@phytec.de>
 <1575894703-316604-5-git-send-email-s.riedmueller@phytec.de>
 <20191209153740.w7klpla2pi6xlnnq@pengutronix.de>
From: =?UTF-8?Q?Stefan_Riedm=c3=bcller?= <s.riedmueller@phytec.de>
Message-ID: <0edc4e68-8fd6-8e6d-450a-41db3ae975be@phytec.de>
Date: Tue, 10 Dec 2019 08:50:41 +0100
MIME-Version: 1.0
In-Reply-To: <20191209153740.w7klpla2pi6xlnnq@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH v2 5/8] ARM: dts: imx6: phycard: Use partname for
 environment device-path
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

On 09.12.19 16:37, Sascha Hauer wrote:
> On Mon, Dec 09, 2019 at 01:31:40PM +0100, Stefan Riedmueller wrote:
>> Change environment device-path from using a separate label to
>> referencing a device plus partname.
> 
> Why? The way it was is fine.

Just to be consistent with phyCORE and phyFLEX. Is there a downside I'm not 
aware of?

Regards,
Stefan

> 
> Sascha
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
