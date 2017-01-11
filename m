Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay0220.hostedemail.com ([216.40.44.220]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cRIYL-00047D-7q
 for barebox@lists.infradead.org; Wed, 11 Jan 2017 13:02:59 +0000
References: <12b302f6-75ae-bf83-370b-abaf0aef9d29@mev.co.uk>
 <20170111083254.hndsbxkeh7c5x3gt@pengutronix.de>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <a2afd0be-1022-3f07-34c2-5328a1251242@mev.co.uk>
Date: Wed, 11 Jan 2017 13:02:30 +0000
MIME-Version: 1.0
In-Reply-To: <20170111083254.hndsbxkeh7c5x3gt@pengutronix.de>
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
Subject: Re: Problem loading environment from spi-nor flash partition since
 barebox 2017.01.0
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11/01/17 08:32, Sascha Hauer wrote:
> On Tue, Jan 10, 2017 at 04:01:40PM +0000, Ian Abbott wrote:
>> Hi!
>>
>> I thought I'd try updating my custom SoCFPGA-based board from barebox
>> 2016.11.0 to 2017.01.0, and have only run into one problem, which is that it
>> is no longer loading the barebox environment during boot:
>>
>> &qspi {
>> 	status = "okay";
>>
>> 	flash: flash@0 {
>> 		#address-cells = <1>;
>> 		#size-cells = <1>;
>> 		compatible = "n25q00";
>> 		reg = <0>;
>> 		spi-max-frequency = <100000000>;
>> 		m25p,fast-read;
>> 		cdns,page-size = <256>;
>> 		cdns,block-size = <16>;
>> 		cdns,read-delay = <4>;
>> 		cdns,tshsl-ns = <50>;
>> 		cdns,tsd2d-ns = <50>;
>> 		cdns,tchsh-ns = <4>;
>> 		cdns,tslch-ns = <4>;
>
> The problem is that your environment path points to the flash node which
> does not have a driver as the corresponding device is not registered
> properly.
>
> With (real) SPI this is a little different and works as expected: If the
> qspi node would be handled by the SPI layer then the SPI core would
> register the child nodes as devices on a SPI bus. The normal probe
> mechanism would then bind the device and the driver together.
>
> With the cadence-quadspi driver a device is registered in
> cqspi_setup_flash(), but there is never a driver attached to it, thus
> the dev->driver test fails.
>
> The proper way if probably to register the n25q00 device on a qspi bus
> and to provide a qspi-nor-flash driver which gets probed then.
> The not-so-proper, faster way could be to just create a dummy driver
> struct and attach it to the device allocated in cqspi_setup_flash().

The 'compatible' string in the flash device node is not used by the 
current cadence-quadspi driver.  "n25q00" is not the most appropriate 
value for the 'compatible' string in this device node (I merely copied 
it from other socfpga-based boards!).  The most appropriate value would 
be "jedec,spi-nor", as registered by the m25p80 driver, but "n25q00" 
could also be registered by the new device driver for backwards 
compatibility.  I guess it's okay for more than one driver to register 
the same compatible id as long as the drivers are registered to 
different bus types.

I just had another thought about the '!dev->driver' test in 
__of_find_path().  Would modifying the test to also check 'dev->bus' as 
follows solve the problem?:

	if (dev->bus && !dev->driver)
		return -ENODEV;

(Or possibly 'return -EPROBE_DEFER' would be better, as suggested by 
Trent Piepho's reply, but that would be a separate patch.)

The devices created by the cadence-quadspi driver do not set 'dev->bus', 
but devices created by proper bus drivers should do so.  I just tried 
it, and it seems to work around my problem.

Best regards,
Ian.

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
