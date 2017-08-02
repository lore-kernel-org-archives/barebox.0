Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0.itk-engineering.de ([212.121.145.30])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dcvti-00027E-CR
 for barebox@lists.infradead.org; Wed, 02 Aug 2017 15:49:24 +0000
Received: from vwexchange002.itk.local (vwexchange002.itk.local [10.61.0.115])
 by mx0.itk-engineering.de (8.14.7/8.14.7) with ESMTP id
 v72FmpL1032481
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL)
 for <barebox@lists.infradead.org>; Wed, 2 Aug 2017 17:48:52 +0200
From: Martin Hollingsworth <Martin.Hollingsworth@itk-engineering.de>
Date: Wed, 2 Aug 2017 15:48:53 +0000
Message-ID: <23913c556f6e4adcadbac2190f2a3409@itk-engineering.de>
Content-Language: de-DE
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: i2c_read_reg on phytec-som-am335x returns wrong data from EEPROM
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hello folks,
I am having trouble reading from the 4k EEPROM via I2C on the phytec-som-am335x board. What I want to achieve is, that the code in board.c reads a value from EEPROM, evaluates it and then adds the value as globalvar to the userland for scripting. However if I read the data using the function from below, the i2c_read_reg() returns with SUCCESS but the data read to the buffer is incorrect. I use the following snippet of code to read the data within the physom_devices_init() function within the board.c file.

------------
struct i2c_adapter *adapter = i2c_get_adapter(0);
if(adapter)
{
    struct i2c_client client;
    client.adapter = adapter;
    client.addr = 0x52;
	char buff[32] = {0xFF};
    if(i2c_read_reg(&client, 0xFE0, buff, sizeof(buff)) > 0)
    {
		for( ii = 0; ii < 32; ii++ )
		{
			printf( "%02X", buff[ii] );
		}
	[...]
------------

If I compare the EEPROM access in barebox userland, I see similar problems. All access to the EEPROM via I2C commands only work correct, if I set the "-w" (use 16bit word access) flag. In all cases the i2c_read or i2c_write functions return 0 (success) but the read or write was not executed correctly. See the example, where both reads should return the same data:

------------
barebox@Phytec phyCORE AM335x:/ i2c_read -b 0 -a 0x52 -r 0xFE0 -c 32 -w 
0xaa 0xff 0xaa 0xff [...] --> OK, DATA is correct
barebox@Phytec phyCORE AM335x:/ i2c_read -b 0 -a 0x52 -r 0xFE0 -c 32
0xf3 0xfd 0x54 0x23 [...] --> RETURNVALUE = 0 (SUCCESS), BUT READ DATA IS WRONG
------------

However if I access the EEPROM using the device definition /dev/eeprom0, as provided by the DTSI file, the usual memory commands in userland - like memset, mw and md - all work just fine.

What am I overlooking here? How do I configure i2c_read_reg() in C-Code to do WORD access to the EEPROM?

Any suggestion would be appreciated.
Regards, Martin

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
